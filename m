Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6FC8D610171
	for <lists+devicetree@lfdr.de>; Thu, 27 Oct 2022 21:20:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234965AbiJ0TUG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Oct 2022 15:20:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234928AbiJ0TUF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Oct 2022 15:20:05 -0400
Received: from mail-0201.mail-europe.com (mail-0201.mail-europe.com [51.77.79.158])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49CD15815F
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 12:20:02 -0700 (PDT)
Date:   Thu, 27 Oct 2022 19:19:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
        s=protonmail3; t=1666898397; x=1667157597;
        bh=IHkIKxpMPqRiri6BAIA4srHKKIhq/4L82tw6UQvh8Ho=;
        h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
         Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
        b=nZD05FnmnuibgUcGy+jkXmrxX/6ois+MOxo6zxzWILFGMKyhYoSSvRf1DsX52WRS5
         tg2RWpZtcNCleY9BXTmctZ/4pbDNarLa7y5iC3OUsL283u+fI8oATCNMgvjA24F4pX
         UPMal+oawuJIiahH+LIM+db7ldChbRRAnPO2F1quKigrHE0b9htePL4IwV31/X/UFZ
         532/rWRK+05UHFsJLnyNVP8/J/RWWFVkhs6uO+EUfzDuF6YoNPwC7J6nasXBzsq0Cf
         7q2bgCI1YIityCoLfC7ozv6aa8zyW0IT6E3Im/x0OiFiWh5T4P0FS3/j+GbQxQ75RW
         wDy7Ib2QlXbOA==
To:     devicetree@vger.kernel.org
From:   Michael Pratt <mcpratt@pm.me>
Cc:     saravanak@google.com, rafal@milecki.pl, ansuelsmth@gmail.com,
        srinivas.kandagatla@linaro.org, Michael Pratt <mcpratt@pm.me>
Subject: [PATCH] of: property: fw_devlink: Fix support for nvmem-cells
Message-ID: <20221027191939.13106-1-mcpratt@pm.me>
Feedback-ID: 27397442:user:proton
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Device linking to an OF node specified by the "nvmem-cells" property
as a supplier device causes probing to hangup on the consumer device.
A previous discussion is linked below.

NVMEM framework does not create standalone devices (i.e. no probing,
not in the hardware layer). Specifically, nvmem devices
are dependent on other subsystem devices and are created when
another driver (mtd, thunderbolt, etc.) calls nvmem_register() or
devm_nvmem_register() during struct device creation in that driver.

The "compatible" property nvmem-cells serves as a trigger
for parsers in other drivers, not for the nvmem driver itself.
An example for MTD devices is commit 658c4448bbbf
("mtd: core: add nvmem-cells compatible to parse mtd as nvmem cells").

This commit introduces function of_get_next_compat_node_parent()
in order to select the next parent node with a "compatible" property,
and the condition sup_not_dev in order to trigger the function,
so that an ancestor node is selected as the supplier device node instead.

Link: https://lore.kernel.org/linux-devicetree/696cb2da-20b9-b3dd-46d9-de4b=
f91a1506@gmail.com/
Fixes: 53e6a671f70a ("of: property: Add device link support for multiple DT=
 bindings")
Signed-off-by: Michael Pratt <mcpratt@pm.me>
---
 drivers/of/property.c | 22 +++++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index 967f79b59016..4b7ee036f3e8 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -1104,6 +1104,18 @@ static struct device_node *of_get_compat_node_parent=
(struct device_node *np)
 =09return node;
 }
=20
+static struct device_node *of_get_next_compat_node_parent(struct device_no=
de *np)
+{
+=09struct device_node *compat, *node;
+
+=09compat =3D of_get_compat_node(np);
+=09node =3D of_get_compat_node_parent(compat);
+=09of_node_put(compat);
+=09of_node_put(np);
+
+=09return node;
+}
+
 /**
  * of_link_to_phandle - Add fwnode link to supplier from supplier phandle
  * @con_np: consumer device tree node
@@ -1281,6 +1293,9 @@ static struct device_node *parse_##fname(struct devic=
e_node *np,=09     \
  * @node_not_dev: The consumer node containing the property is never conve=
rted
  *=09=09  to a struct device. Instead, parse ancestor nodes for the
  *=09=09  compatible property to find a node corresponding to a device.
+ * @sup_not_dev: The supplier node and nearest parent node with a "compati=
ble"
+ *=09=09 property are not a struct device. Instead, parse ancestor nodes f=
or the
+ *=09=09 next "compatible" property to find a node corresponding to the de=
vice.
  *
  * Returns:
  * parse_prop() return values are
@@ -1293,6 +1308,7 @@ struct supplier_bindings {
 =09=09=09=09=09  const char *prop_name, int index);
 =09bool optional;
 =09bool node_not_dev;
+=09bool sup_not_dev;
 };
=20
 DEFINE_SIMPLE_PROP(clocks, "clocks", "#clock-cells")
@@ -1393,7 +1409,7 @@ static const struct supplier_bindings of_supplier_bin=
dings[] =3D {
 =09{ .parse_prop =3D parse_power_domains, },
 =09{ .parse_prop =3D parse_hwlocks, },
 =09{ .parse_prop =3D parse_extcon, },
-=09{ .parse_prop =3D parse_nvmem_cells, },
+=09{ .parse_prop =3D parse_nvmem_cells, .sup_not_dev =3D true, },
 =09{ .parse_prop =3D parse_phys, },
 =09{ .parse_prop =3D parse_wakeup_parent, },
 =09{ .parse_prop =3D parse_pinctrl0, },
@@ -1457,6 +1473,10 @@ static int of_link_property(struct device_node *con_=
np, const char *prop_name)
 =09=09=09con_dev_np =3D s->node_not_dev
 =09=09=09=09=09? of_get_compat_node_parent(con_np)
 =09=09=09=09=09: of_node_get(con_np);
+
+=09=09=09if (s->sup_not_dev)
+=09=09=09=09phandle =3D of_get_next_compat_node_parent(phandle);
+
 =09=09=09matched =3D true;
 =09=09=09i++;
 =09=09=09of_link_to_phandle(con_dev_np, phandle);
--=20
2.30.2


