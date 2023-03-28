Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EA4E66CCBD6
	for <lists+devicetree@lfdr.de>; Tue, 28 Mar 2023 23:03:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229794AbjC1VDF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Mar 2023 17:03:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42656 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229780AbjC1VDD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Mar 2023 17:03:03 -0400
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com [66.111.4.29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B7E535AD
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 14:02:36 -0700 (PDT)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
        by mailout.nyi.internal (Postfix) with ESMTP id 01A9F5C019F;
        Tue, 28 Mar 2023 17:02:25 -0400 (EDT)
Received: from imap43 ([10.202.2.93])
  by compute5.internal (MEProxy); Tue, 28 Mar 2023 17:02:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alistair23.me;
         h=cc:cc:content-type:content-type:date:date:from:from
        :in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to; s=fm2; t=1680037344; x=
        1680123744; bh=2SxhLpkqCWZPWXZrMakzu/qjNqjhuXytjFfouIQqgOc=; b=W
        taHw1wSzbX1SwKaWErOYfS//FWF9AOg51RpippiQuMWWmR/lZq1DANa2s02uU5Tx
        5e7g/38K8Ts8jfGFD6FA6zlqYD+3odyZxB6Cq+8HnJe/DyaY4J+fpj4JM7lxVU16
        tWuDZGdEVjSXlMkYDkhbhx3vOk4QcLkd5jZ5XGpPKuQTBFwN/rGfkH4uIvyZd4qE
        veWFjYW5hs6uJr30JPkb/X0iUYDhdfS1OhD/kfqBpa8h23tkp71Gfm8BJxy3HbGs
        CggFnp4uC0cRUssQenYjcc8V4RQ++vUS2kZuIZq3F+wviRM6FqlJSJd901XbvBAt
        +lQapP9RDZeuE6bTaxORg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-type:content-type:date:date
        :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
        :message-id:mime-version:references:reply-to:sender:subject
        :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
        :x-sasl-enc; s=fm2; t=1680037344; x=1680123744; bh=2SxhLpkqCWZPW
        XZrMakzu/qjNqjhuXytjFfouIQqgOc=; b=fLrxa93H6UP2VYa+34KoOrihAcW6a
        3ClysLYorYR19pl9FZoFQZyrHA5y4WWUc79LtuP9ZMATzAVlj95Q3hnbJ+YWLJu4
        Xo1qccAkKCLv/VrbrhJ/FVLd5D1UTyiy8LE306uPD20FnjAy2inrgFR5z+QnnMgc
        f5XnpiSHmV/E5ZnVAPMnpHpcS8tQRl7RQ6qFT8Yj/nLTOVXx4f7MpFz9tAxw6iMm
        qKdyRAzTl0YOwg0wCpzFsnscRQlkX1XTixEjC6Ju898OKitgar9kRhM+9b97Ca0j
        TCEyzoyKg4J4K5ge67vRos/v1ubpEcpBhsFRNbiumceJYCLg6tprd4suA==
X-ME-Sender: <xms:4FUjZOGa6VFG8u9uRpdVPtnqwsxOgfTb_qlPI4PMlSwnPlvGefLD9g>
    <xme:4FUjZPUz_-5mrYecHfi3J9X0DZpc93KKMkkI9vbxpX1T0dQpO81PfowJZD4l02qCV
    F8CLNIk5FLTqQy8bes>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrvdehgedgudehiecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpefofgggkfgjfhffhffvvefutgesthdtredtreertdenucfhrhhomheptehl
    ihhsthgrihhruceorghlihhsthgrihhrsegrlhhishhtrghirhdvfedrmhgvqeenucggtf
    frrghtthgvrhhnpeeukeffkefhjeethedtieegudejvedvhfejleekheefhfdufffhjefg
    jeeiheehhfenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
    hmpegrlhhishhtrghirhesrghlihhsthgrihhrvdefrdhmvg
X-ME-Proxy: <xmx:4FUjZIKVk17OSQuQb_8j8H4ZpcglAvu7_-z68XjNX47un_z3lu79lQ>
    <xmx:4FUjZIHg5LGsdoUbE4o8ZMheNxaT-crvXlmr4Nsbhv_mhwkOD-jm2A>
    <xmx:4FUjZEVBV3Fq2KpXb8Kazuki4PVMmtMzCefEQjpQHjCMyNWvNVAO4A>
    <xmx:4FUjZOc5B1H7fKLMraU5XibFsAYy-wCqHM_AC2zQum1f4MkHo1QcZw>
Feedback-ID: ifd214418:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
        id 051BD2D40087; Tue, 28 Mar 2023 17:02:24 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-237-g62623e8e3f-fm-20230327.001-g62623e8e
Mime-Version: 1.0
Message-Id: <c092dfae-835c-4edc-835a-52cbe3fc5c09@app.fastmail.com>
In-Reply-To: <20230328185147.529718-1-festevam@gmail.com>
References: <20230328185147.529718-1-festevam@gmail.com>
Date:   Wed, 29 Mar 2023 07:02:03 +1000
From:   Alistair <alistair@alistair23.me>
To:     "Fabio Estevam" <festevam@gmail.com>,
        "Shawn Guo" <shawnguo@kernel.org>
Cc:     "Rob Herring" <robh+dt@kernel.org>,
        "Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        philippe.schenker@toradex.com, "Fabio Estevam" <festevam@denx.de>
Subject: Re: [PATCH 1/2] ARM: dts: imx7d-remarkable2: Remove unnecessary
 #address-cells/#size-cells
Content-Type: text/plain
X-Spam-Status: No, score=-0.9 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 29 Mar 2023, at 4:51 AM, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Building with W=1 leads to the following dtc warning:
> 
> arch/arm/boot/dts/imx7d-remarkable2.dts:319.19-335.4: Warning (avoid_unnecessary_addr_size): /soc/bus@30800000/i2c@30a50000/pmic@62: unnecessary #address-cells/#size-cells without "ranges" or child "reg" property
> 
> Remove unnecessary #address-cells/#size-cells to fix it.
> 
> Fixes: 9076cbaa7757 ("ARM: dts: imx7d-remarkable2: Enable silergy,sy7636a")
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Reviewed-by: Alistair Francis <alistair@alistair23.me>

Alistair

> ---
> arch/arm/boot/dts/imx7d-remarkable2.dts | 2 --
> 1 file changed, 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/imx7d-remarkable2.dts b/arch/arm/boot/dts/imx7d-remarkable2.dts
> index dc954e4f63e0..92cb45dacda6 100644
> --- a/arch/arm/boot/dts/imx7d-remarkable2.dts
> +++ b/arch/arm/boot/dts/imx7d-remarkable2.dts
> @@ -321,8 +321,6 @@ sy7636a: pmic@62 {
> reg = <0x62>;
> pinctrl-names = "default";
> pinctrl-0 = <&pinctrl_epdpmic>;
> - #address-cells = <1>;
> - #size-cells = <0>;
> #thermal-sensor-cells = <0>;
> epd-pwr-good-gpios = <&gpio6 21 GPIO_ACTIVE_HIGH>;
>  
> -- 
> 2.34.1
> 
> 
