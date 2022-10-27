Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B69FF6104A5
	for <lists+devicetree@lfdr.de>; Thu, 27 Oct 2022 23:43:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236887AbiJ0VnH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Oct 2022 17:43:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236694AbiJ0VnH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Oct 2022 17:43:07 -0400
X-Greylist: delayed 8586 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Thu, 27 Oct 2022 14:43:06 PDT
Received: from mail-40133.protonmail.ch (mail-40133.protonmail.ch [185.70.40.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A1518322E
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 14:43:06 -0700 (PDT)
Date:   Thu, 27 Oct 2022 21:43:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
        s=protonmail3; t=1666906984; x=1667166184;
        bh=BoreT82M7Y58XugDlJ1ukW07dJYIn5lrrJR7s8sgmZM=;
        h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
         Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
         Message-ID:BIMI-Selector;
        b=mkflbTKYICEGBLv0z7mIUuXyCiPvj7WwPZdS+LJz6rweQ8S5nsOYGP6KDZWSUQF2B
         46nAIR6UNJf73/+tHvuJa1p3qJ08TuPWvLT/U/2bKqXcMENTAhaS/GQlPhCruIowcM
         3L78pwQlUu9BbBQ+LursuO8qnzNOC8xEBAon+7LQni5/3NhYzayI4zaqaux4r5bG0y
         JuUjL1QqHtOv4C8LChlH1zEfaAHKqXgjrA3wVZxCBvXTX0Lxs/zC57kj8HmuOqDKBp
         JZBguydfKTfr35fdvz7no4Y469Pa9vv1gWqDjP/gC6u8PZ7vHAaP0BEq35o09xW0SQ
         1O9RNDyvuPjfA==
To:     Saravana Kannan <saravanak@google.com>
From:   mcpratt@pm.me
Cc:     devicetree@vger.kernel.org, rafal@milecki.pl, ansuelsmth@gmail.com,
        srinivas.kandagatla@linaro.org
Subject: Re: [PATCH] of: property: fw_devlink: Fix support for nvmem-cells
Message-ID: <m08h9-9Spey2RcSxfM2vJLYwEAfuVJWBpQrAEqkopJLwv7Hen59r00F7C5TjKC32EsTG9eooMpfdcpumczlBjgYZv-2sqzCLIhRjnKbbcww=@pm.me>
In-Reply-To: <CAGETcx8N8TPMuOFBhJ0kgBfxa74YpeZXTFM3QRrbdz5bVj2x3Q@mail.gmail.com>
References: <20221027191939.13106-1-mcpratt@pm.me> <CAGETcx8N8TPMuOFBhJ0kgBfxa74YpeZXTFM3QRrbdz5bVj2x3Q@mail.gmail.com>
Feedback-ID: 27397442:user:proton
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


>=20
> Hi Michael,
>=20
> Thanks a lot for submitting a patch to fix issues in fw_devlink. I
> think my other patch series[1] should fix this in a generic way for
> all such cases where the phandle doesn't actually point to the
> supplier struct device. The series itself has some bugs, but there are
> "try this if it fixes it" code snippets in the thread that I need to
> roll into a v2.
>=20
> Give it a shot if you can. I'll try to get back to the series soon.
>=20
> [1] - https://lore.kernel.org/lkml/20220810060040.321697-1-saravanak@goog=
le.com/
> -Saravana

Hi Saravana,

It's definitely good to hear that someone is working on it already :D

It looks like the "dangling consumers" function would probably fix
the issue in Openwrt with fw_devlink. However, I noticed that in your serie=
s
the function of_get_compat_node_parent() is still there. I'm not sure wheth=
er
or not that could be simplified as well, since that is how I got the idea
for this patch. I understand your goal is to remove the dependency on
the "compatible" properties in total (at least for supplier devices).

I'll try the series and let you know how it goes (unless your V2 is coming =
soon).

FYI the device I test this on is Engenius EPG600 (MT7620A + QCA8337)

--=20
Thanks,
MCP
