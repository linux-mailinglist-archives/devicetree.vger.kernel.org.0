Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2B3D26AC8F9
	for <lists+devicetree@lfdr.de>; Mon,  6 Mar 2023 18:01:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229972AbjCFRBi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Mar 2023 12:01:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37944 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230200AbjCFRBa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Mar 2023 12:01:30 -0500
Received: from amity.mint.lgbt (vmi888983.contaboserver.net [149.102.157.145])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1967B42BC5
        for <devicetree@vger.kernel.org>; Mon,  6 Mar 2023 09:01:11 -0800 (PST)
Received: from amity.mint.lgbt (mx.mint.lgbt [127.0.0.1])
        by amity.mint.lgbt (Postfix) with ESMTP id 4PVl5H4Hbnz1S5Jm
        for <devicetree@vger.kernel.org>; Mon,  6 Mar 2023 11:53:23 -0500 (EST)
Authentication-Results: amity.mint.lgbt (amavisd-new);
        dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
        header.d=mint.lgbt
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mint.lgbt; h=
        content-transfer-encoding:mime-version:x-mailer:message-id:date
        :subject:to:from; s=dkim; t=1678121590; x=1678985591; bh=uK+glyg
        nD/QeqUlfo72/hfCeJTh8hcZKk6WDctNDr6Q=; b=k3FuSrwIUvsUH9AwC8X8M3C
        ygbT/QAmS7BvuJ4zBTvmpXEwb8fcZYdaEAdkIqGfOTwcFi0GtFOLVklNzn8DEfod
        rBfwDBvj4Ja6HKaWLg+uagExiNjrRvMUeir5kflCJ5iRbSNha1LW+dRl3SYTrPXZ
        caRe+3KEKOtOXTELtKb9Bq7WMjPZCq0+cPC9xVxh2gKTA+aOtu9FGR/DFVSFNsgd
        5gJcIXxdzJduk5kPYnijhVyg9CqmC5/oChUDe9xalpCPMTCsVoUp0l8t2MZvhrpk
        w0LFk0vd8meWrxE41Ca/PRk+Ule96OozCmALge3fkqCp8jDs3sO2ePS4dhM6Vmw=
        =
X-Virus-Scanned: amavisd-new at amity.mint.lgbt
Received: from amity.mint.lgbt ([127.0.0.1])
        by amity.mint.lgbt (amity.mint.lgbt [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id AdMT3iupITiN for <devicetree@vger.kernel.org>;
        Mon,  6 Mar 2023 11:53:10 -0500 (EST)
Received: from dorothy.. (unknown [186.105.8.42])
        by amity.mint.lgbt (Postfix) with ESMTPSA id 4PVl4p1NzFz1S4vb;
        Mon,  6 Mar 2023 11:52:57 -0500 (EST)
From:   Lux Aliaga <they@mint.lgbt>
To:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        vkoul@kernel.org, kishon@kernel.org, alim.akhtar@samsung.com,
        avri.altman@wdc.com, bvanassche@acm.org, keescook@chromium.org,
        tony.luck@intel.com, gpiccoli@igalia.com
Cc:     ~postmarketos/upstreaming@lists.sr.ht,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-scsi@vger.kernel.org, linux-hardening@vger.kernel.org,
        phone-devel@vger.kernel.org, martin.botka@somainline.org,
        marijn.suijten@somainline.org
Subject: 
Date:   Mon,  6 Mar 2023 13:52:39 -0300
Message-Id: <20230306165246.14782-1-they@mint.lgbt>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Introduce Universal Flash Storage support on SM6125 and add support for t=
he Xiaomi Mi A3 based on the former platform.

Changes since v6:
- Add struct for v3-660 UFS PHY offsets and modify sm6115 UFS PHY to use =
it
- Set ufs_mem_phy reg size to 0xdb8 in sm6125.dtsi
- Drop "#address-cells" and "#size-cells" properties on reserved-memory n=
ode in xiaomi-laurel-sprout dts
- Move "status" last on &pon_resin node in xiaomi-laurel-sprout dts
- Modify "&pm6125_gpio" pointer to "&pm6125_gpios" in xiaomi-laurel-sprou=
t dts

v6: https://lore.kernel.org/linux-devicetree/20230108195336.388349-1-they=
@mint.lgbt/
v5: https://lore.kernel.org/linux-devicetree/20221231222420.75233-2-they@=
mint.lgbt/



