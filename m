Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3FD725AF333
	for <lists+devicetree@lfdr.de>; Tue,  6 Sep 2022 19:58:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229445AbiIFR6P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 13:58:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229542AbiIFR6N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 13:58:13 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27A64A3D2A
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 10:58:06 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id bq23so18564010lfb.7
        for <devicetree@vger.kernel.org>; Tue, 06 Sep 2022 10:58:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date;
        bh=ZTVrtBjQcjDz2HXOGZHir7kyjFYYhDnVRv7D7CHaO+8=;
        b=KK7KHRMtwl9+8HYywuHrGYpuJRzYwogYCmFt11etZs1KJ9SU9xCFEX2Dd3uE+lgIZp
         Q9ubct+zSFOd8O+jiZT7A1AiRpnzCnhgmiJ6EiDql57zRJDjvpG/ekbVso1zPLzrHrmV
         cddZOHdxFPyQB/Xm7KuY5iN4AqkUXfcNe+Hv9xhyB2IdXvK03qUATSyemy5eZ0LyVIar
         Mx12NCKgBNN8CPX2tOllFh1edhngP+27yZMPATW594l4ADyts39mr/v1nNa5HdpWoD7s
         iRlyA+UJM8rAhYb+HdRZBz05aGZfbv/jXahYATpFM42RN4NFiscIHN4dZxnOX+YQYbkf
         /yWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date;
        bh=ZTVrtBjQcjDz2HXOGZHir7kyjFYYhDnVRv7D7CHaO+8=;
        b=Qui0e1cfMRO5ySfLUfreypm/8y6gKFLsxb9JXa+5cKQMryNzEQpVgCGfs9xS/+45Wo
         8KW+L8b/RdIQSr8NYrxYdHenatYConO0ZkfddrUb6t0KtuqB3pSrs6OLAbSrpDCeQcdZ
         h6Al7jqNBypY9mLko5VlpENwtWLRBEp9ogTAka82gn0k1aZfOK3Ugmwv65qxhPyJbsSo
         jgv5fZMYztxN3Qij39iEtxl3mga0VMpg1C2x09NZ8oFVbrlctRefHHNcndPHskrWWHta
         YpCQALmAamnr8sySZb+gOK3aYVF40OBphCgzd/5A9x++Sk0BfrxXaPW+QoANnH15yJ6d
         mqEQ==
X-Gm-Message-State: ACgBeo07x9/M69kBWexrMV4F8P82+0AO8KX2+g5Eu8EK03ukxH/cG7KW
        W5M0WeHFPOXJzgKEDw0q8pP+NdEl3GkC/tChDx5yezAJ2yQ=
X-Google-Smtp-Source: AA6agR6JaySd7fHnpjySEXtyO5OIRPGjYFXIHEOWdxj6R0A4R9Jb3TlvKFf1KOTkbV0TvdpzisNEqC4cOUxAPw3EmF0=
X-Received: by 2002:a05:6512:2083:b0:496:272:627d with SMTP id
 t3-20020a056512208300b004960272627dmr5417670lfr.115.1662487084959; Tue, 06
 Sep 2022 10:58:04 -0700 (PDT)
MIME-Version: 1.0
References: <20220906174823.28561-1-macroalpha82@gmail.com>
In-Reply-To: <20220906174823.28561-1-macroalpha82@gmail.com>
From:   Maya Matuszczyk <maccraft123mc@gmail.com>
Date:   Tue, 6 Sep 2022 19:57:28 +0200
Message-ID: <CAO_MupLcjY=3mWA7_RN4AAPir1Gu_GR4q1=5_9wdSEi-qcHKSQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/5] rockchip-dsi for rk3568
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        linux-phy@lists.infradead.org,
        devicetree <devicetree@vger.kernel.org>,
        dri-devel@lists.freedesktop.org, cl@rock-chips.com,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Peter Geis <pgwipeout@gmail.com>, vkoul@kernel.org,
        kishon@ti.com,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        Heiko Stuebner <heiko@sntech.de>,
        Sandy Huang <hjc@rock-chips.com>,
        Chris Morgan <macromorgan@hotmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,
What other patches would I need to apply to test this series
on Anbernic RG503?

Best Regards,
Maya Matuszczyk


wt., 6 wrz 2022 o 19:52 Chris Morgan <macroalpha82@gmail.com> napisa=C5=82(=
a):
>
> From: Chris Morgan <macromorgan@hotmail.com>
>
> This series adds support for the dsi and dphy controllers on the
> Rockchip RK3568. I can confirm that for the Rockchip RK3568 this
> current series DOES WORK now, but it requires rolling back clk changes
> made for the HDMI driver. If the clock changes are not rolled back, the
> image on the screen is shifted about 100 pixels to the right.
>
> Clk changes in question:
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit=
/drivers/clk/rockchip/clk-rk3568.c?id=3Dff3187eabb5ce478d15b6ed62eb286756ad=
efac3
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit=
/drivers/clk/rockchip/clk-rk3568.c?id=3D6e69052f01d9131388cfcfaee929120118a=
267f4
>
> Tested on an Anbernic RG503 and RG353P with clock changes rolled back,
> the hardware works correctly on both devices.
>
> Changes since RFCv1:
>  - Identified cause of image shift (clock changes).
>  - Noted that driver works now.
>  - Added devicetree nodes for rk356x.dtsi.
>
> Chris Morgan (5):
>   dt-bindings: display: rockchip-dsi: add rk3568 compatible
>   dt-bindings: phy-rockchip-inno-dsidphy: add compatible for rk3568
>   drm/rockchip: dsi: add rk3568 support
>   phy/rockchip: inno-dsidphy: Add support for rk3568
>   arm64: dts: rockchip: Add DSI and DSI-DPHY nodes to rk356x
>
>  .../display/rockchip/dw_mipi_dsi_rockchip.txt |   1 +
>  .../bindings/phy/rockchip,px30-dsi-dphy.yaml  |   1 +
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi      |  72 +++++++
>  .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   |  51 ++++-
>  .../phy/rockchip/phy-rockchip-inno-dsidphy.c  | 204 ++++++++++++++----
>  5 files changed, 281 insertions(+), 48 deletions(-)
>
> --
> 2.25.1
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
