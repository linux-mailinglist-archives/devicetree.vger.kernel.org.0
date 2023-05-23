Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7B5D070E732
	for <lists+devicetree@lfdr.de>; Tue, 23 May 2023 23:13:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230512AbjEWVNs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 May 2023 17:13:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55012 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230214AbjEWVNs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 May 2023 17:13:48 -0400
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76D44DD
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 14:13:47 -0700 (PDT)
Received: by mail-pj1-x102f.google.com with SMTP id 98e67ed59e1d1-253310a0df7so39400a91.1
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 14:13:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684876427; x=1687468427;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Kcts24zFjhiuWZNY7MhTVsS7q86XcVFaCFFUPFV/Sxs=;
        b=h/UIGcKUFHBK3tILc+AJceAHIZ4isgWtZgJsV1h0El+iLvWjsdiKjsGKs1cUcDy1xM
         JR/9xXW4VRMyUI5WGj2Gzkgj75ak4S10QI49qdulwIev/V1EsKhTj71Kqnoh14KXutff
         LMJ254DOTU/Zo/y8a0skxnYDssFVcDnTszSjbKMk5hcyM4JmCiF0MGPICV8uRrlcacGN
         CzhkK6p/6nqfrtVzAkOcu8MSaW51JFg4aEDelFje0qBCvxbCb0mQazsyfN6e27Jc/j41
         2Z5fFNqzp4IpEUTs1lEXa4JURfE3OtjiHqQHBYiALh5LaelTzpxrz/uPZkXqFBYS69BW
         ggpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684876427; x=1687468427;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Kcts24zFjhiuWZNY7MhTVsS7q86XcVFaCFFUPFV/Sxs=;
        b=E3Sw5X1jppsyINhoyutjZK57wsGspbwwByYTQbtGQzN2My+CdNZiXO7ylTLyttzcn7
         31tavalyz7dKIvKqUT4XD68IRF3XUhF3gEMcXm/N/IFWeXT0gJjh7DQ8McDvCMX2VdGA
         IqLdWawLhK80GTGwbiGipMw+Re7dGnPYWxbB2tYgCeqz/9v+il+2idtZHTNr15DzvToI
         A7MJU/wTYMNxXhafGgppkbx7dGXG5tnxrYe5MLoL2mm+F/563IMeM0abWbAhnEZF8a27
         W9IDDzL1xMhEe4FIz8FC3UNJhVlEtN651chh5CksComEPXN3pKDWXH6+3Nnv5lVSx9/d
         T1Xw==
X-Gm-Message-State: AC+VfDymKzM2Skidid5g2xHCLYRForQ5UAffcShIWabmmbpNT7+m5wOD
        o5My5TWKL6FfSnpvExQqu8sH1h5ltvwO1aHK2iU=
X-Google-Smtp-Source: ACHHUZ4WAks91EfHDDUW+EVGuq+7H9vVQJEtsaw5D6XZdZfZFDzV2K7lqdrbJENqfuzQgq2k6MUS+jZ7+5wVkQonHQY=
X-Received: by 2002:a17:903:2302:b0:1a1:956d:2281 with SMTP id
 d2-20020a170903230200b001a1956d2281mr439629plh.3.1684876426776; Tue, 23 May
 2023 14:13:46 -0700 (PDT)
MIME-Version: 1.0
References: <20230522201404.660242-1-festevam@gmail.com> <20230522201404.660242-5-festevam@gmail.com>
 <b479bae2-1d0a-8cd1-0f80-74ecb483605c@denx.de> <CAOMZO5BtPUu9CfxJO-mScB4OYeN3g7HxKF=D636wFSUJ5HMsoQ@mail.gmail.com>
 <a9e2e19f-e9df-81e3-4608-71beed85852f@denx.de>
In-Reply-To: <a9e2e19f-e9df-81e3-4608-71beed85852f@denx.de>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Tue, 23 May 2023 18:13:34 -0300
Message-ID: <CAOMZO5Bujbynq5CSbWQu+aEsiaTP686OW44MujDFuE1k5EMeMA@mail.gmail.com>
Subject: Re: [PATCH v6 5/5] soc: imx: imx6sx-gpr: Introduce a GPR driver
To:     Marek Vasut <marex@denx.de>
Cc:     shawnguo@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, conor+dt@kernel.org,
        bhelgaas@google.com, Fabio Estevam <festevam@denx.de>
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

Hi Marek,

On Tue, May 23, 2023 at 10:32=E2=80=AFAM Marek Vasut <marex@denx.de> wrote:

> It might be simple to add this functionality to the core, could you
> please take a quick look ?

If I do the following change:

--- a/arch/arm/boot/dts/imx6sx.dtsi
+++ b/arch/arm/boot/dts/imx6sx.dtsi
@@ -842,7 +842,7 @@ iomuxc: pinctrl@20e0000 {
                        };

                        gpr: syscon@20e4000 {
-                               compatible =3D "fsl,imx6sx-iomuxc-gpr", "sy=
scon";
+                               compatible =3D "fsl,imx6sx-iomuxc-gpr",
"syscon", "simple-mfd";
                                #address-cells =3D <1>;
                                #size-cells =3D <1>;
                                reg =3D <0x020e4000 0x4000>;

Then I can get rid of this drivers/soc/imx/imx6sx-gpr.c completely.

Would you agree with this approach?
