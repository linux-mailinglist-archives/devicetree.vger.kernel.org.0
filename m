Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8B9E651BAE1
	for <lists+devicetree@lfdr.de>; Thu,  5 May 2022 10:45:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350292AbiEEItY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 May 2022 04:49:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60414 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350527AbiEEItS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 May 2022 04:49:18 -0400
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5052F13DE2
        for <devicetree@vger.kernel.org>; Thu,  5 May 2022 01:45:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1651740304;
        bh=xx/4O0ev2h+cTTB8VZtp7yVZgwGZrAIwxUX58uMFqq0=;
        h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
        b=GeGv5ooBNOUCELJdyhcGPi5AxDeLQCnfHp3QiXcKhJzX3b9D8/fJcMn1t/ATvpd3E
         VUrTifK62rAZzyK3nwmHXtJb0DwDSl+bfLGvccxI8O9IytezT49YOQQD9lL4FIkamo
         fHsJ4HY+UhrAFI35Nh0sRUP3ViKytEhycutq0pQc=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.145.208] ([217.61.145.208]) by web-mail.gmx.net
 (3c-app-gmx-bs47.server.lan [172.19.170.99]) (via HTTP); Thu, 5 May 2022
 10:45:03 +0200
MIME-Version: 1.0
Message-ID: <trinity-bfbffcba-d1ed-40f7-8f37-0c8ad9245e3c-1651740303894@3c-app-gmx-bs47>
From:   Frank Wunderlich <frank-w@public-files.de>
To:     Sascha Hauer <s.hauer@pengutronix.de>
Cc:     dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>,
        Sascha Hauer <s.hauer@pengutronix.de>
Subject: Aw: [PATCH v11 17/24] arm64: dts: rockchip: rk356x: Add HDMI nodes
Content-Type: text/plain; charset=UTF-8
Date:   Thu, 5 May 2022 10:45:03 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <20220422072841.2206452-18-s.hauer@pengutronix.de>
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <20220422072841.2206452-18-s.hauer@pengutronix.de>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:jhHeBB0cVrPpmyuSV8dkcZkfMMoOV6qVeNwsgrvv2BcHyrAD72naC0el219Z5ID+Z/Re/
 5cFt0p836fqtEg3/WBhTIHvozZg+qauPcPv2V/HiN+36OxKfXenbX8mkMkS9cP2hLcbpAH94/XF2
 Ee6ya9jarBvfYFc40yW1cB6jkU4h5+hrxI+2CoRz8QUdvDTl7CO0aKJbcxroi4icmuounMlaKfuM
 CBLLu9ZCJdj7X2zTm/5V/04h2hTpMkujwQRLAsZ33x0MlM6NRmewtbu3BWtKgTAXxCzJT8uuXB02
 xo=
X-UI-Out-Filterresults: notjunk:1;V03:K0:hc0JSv9jgAE=:bZXSWIrFTtqezeF/jRdgdZ
 NnwkpgZMZnJuCsrlkdUy8btjwq8ZoV/0Xpzcs13FWuCtYIPQ5ro64TS6dvgTFIyyJL2ZmtUJd
 DihkaR+cIKek7YXrjROayUF89hAclkSKAyqQ+HC51L+Pl0i4jY5UwJHPUGFX1dzVcPZMz72vT
 vKQmQ5AGX+Nda0LKrhWy7NRmp0WrhAmp6tamK/ijygEGCEntUpUImUs8v8eOB/ASyDfWEKEuM
 +I8gNabAR0sp3exIaWqR7m9GUtRzkJOAVgiM2tPqp8nuo0nhBDHyBUwqofFQ3T8QwXt9hQlwd
 aB2iYe9EjootdPpT72SaiouyXDQHLmoL0zo18RxhNnA0sGA7c+n4B699M70TcVmU7pT7czuV6
 8+Lyw+tnzm8iONWsrJS+rngS2zf0rTzq0TbZdHJUxZSZgF9Z26AfaDrOGBz0awRvW/rYrFb7M
 vZiYKM4W/6K1a5V5AecMf+c7wVgaXrJw6HgVztSLSs1IjEU1jIgfP/pKAk4/KrZxgvIm/PLTw
 1G9roRVpNQHHPORfBRHtEiQwUxMzYbcxKTikfPtOmRWGJyNtsMDSbucb9sd2dJoLS0MBotOMn
 h+x49mJ/hzTZvm97DeV3rKLun0mwW/ezhcQ9wX4BbcUQDCis79x/3UGtgCgaMIS6uEspEFSvJ
 mU+nX3CGpBFSV9b7n6woeUNzrIUThfayn+fcngw+HFO14azzOp7jZet2vblY8uB+Fpvh1YUuc
 mKfsXjtnm9WsaLRT4/uGFfzfZWLDY/JBRfYQhbqc4/sEj/1ZmeYZqOH4imOhm97W0keilCxFM
 eG5inPC
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

> Gesendet: Freitag, 22. April 2022 um 09:28 Uhr
> Von: "Sascha Hauer" <s.hauer@pengutronix.de>
> Betreff: [PATCH v11 17/24] arm64: dts: rockchip: rk356x: Add HDMI nodes
>
> Add support for the HDMI port found on RK3568.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>
> Notes:
>     Changes since v7:
>     - Rename hclk to niu

clock-name no more present since v9, see below

>     Changes since v5:
>     - Drop unnecessary #size-cells/#address-cells from nodes with only s=
ingle endpoint
>
...
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -620,6 +620,38 @@ vop_mmu: iommu@fe043e00 {
>  		status =3D "disabled";
>  	};
>
> +	hdmi: hdmi@fe0a0000 {
> +		compatible =3D "rockchip,rk3568-dw-hdmi";
> +		reg =3D <0x0 0xfe0a0000 0x0 0x20000>;
> +		interrupts =3D <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks =3D <&cru PCLK_HDMI_HOST>,
> +			 <&cru CLK_HDMI_SFR>,
> +			 <&cru CLK_HDMI_CEC>,
> +			 <&pmucru CLK_HDMI_REF>,
> +			 <&cru HCLK_VO>;
> +		clock-names =3D "iahb", "isfr", "cec", "ref";

noticed there are still 5 clocks, but only 4 clock-names. So i added "niu"=
 after ref.
maybe missing clock-name was causing my iommu page-faults...on a quick tes=
t i have not got it,
but they came not every time.

what do you think?

> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&hdmitx_scl &hdmitx_sda &hdmitxm0_cec>;
> +		power-domains =3D <&power RK3568_PD_VO>;

regards Frank
