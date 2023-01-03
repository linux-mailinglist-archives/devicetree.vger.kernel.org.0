Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0658C65C5C6
	for <lists+devicetree@lfdr.de>; Tue,  3 Jan 2023 19:09:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238678AbjACSJo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Jan 2023 13:09:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33468 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238677AbjACSJn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Jan 2023 13:09:43 -0500
Received: from mail-ua1-x936.google.com (mail-ua1-x936.google.com [IPv6:2607:f8b0:4864:20::936])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A6DA65A9
        for <devicetree@vger.kernel.org>; Tue,  3 Jan 2023 10:09:42 -0800 (PST)
Received: by mail-ua1-x936.google.com with SMTP id j1so7047951uan.1
        for <devicetree@vger.kernel.org>; Tue, 03 Jan 2023 10:09:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=BZbeEAC/j+vR+8J8FLV/5H0KKqTHI+JS1OBI154e+Ag=;
        b=sJocDXSb3gIOMg3IRna3WzCT4WjYCpaOvdasA7H0B2is2Ehs6U8oajnO5/WNLCrzf0
         75tPo4H2xE7ceLSlfgE4GCS9259rT29ZhxtbtWUOZbS03tPeZipm1odILk1bWdRmd9oj
         oC/3ITzBN6nblv9AG3iYLYbRiTdpw3Hmeplc254AuaTgwLX3hIObzf+FuMJBsqgw4H8C
         M3T2jX89d6vhyq4qz2jjRWUz8IAixtxd8ZR+OD7WVE0nVGqg8gTikHqcGYVWRIUQPWQ7
         IvPqCPdX9cu8VByX8HUvKyiA1a1VlmF1OzrJdCWjdKrmV0Ln6522Zvzgqvlye/ZXpOuR
         F7Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BZbeEAC/j+vR+8J8FLV/5H0KKqTHI+JS1OBI154e+Ag=;
        b=uZfLoTScyJNvmJQ44Uuxy3QvVdlg57l9UFsSSkkG4OsB/FdhtQmDUptvqF3NWLKfa9
         y9hJB3cczKqLOwx40qo3mXYMSfsJavWP0ZQSUu6Si65qSiYD8sWu1jgglHRmisPv8IS9
         O66wDrX9wzw8f+wwZWlE4q1SjoIarqQYGKHG0fy+W56TZRDip/YTGXxThCWFhkvVioOw
         XLS49GzMRily17tX2+gQA8Tx+r31CgavQi732jElV9Aagb0Dw2fAukLTkyOdgsfZBuMv
         3QtIN9bL7tp9PrepHGG2u0FD++67jU+T65BT3rzaDz2Om1pXyGIN1c/J17gS/BEIu/Q6
         Vv3Q==
X-Gm-Message-State: AFqh2kp4p/cnI0ybD1Beji/P275Ncx5TmcnNn3qs3N0yR4vhqqRZ9CHj
        J08IBbr7AB7bwuyctTiz6GTRt55ZdTmJpI//fBFxCw==
X-Google-Smtp-Source: AMrXdXv1IwSIF45BV50aFo3aiDUnz2CXQWISdVLvJ4HrK7INYOO04b/NqZXetmJIiayfk+5DVVQMC8EmvA595/TK4qI=
X-Received: by 2002:ab0:35e1:0:b0:55a:a7aa:76f with SMTP id
 w1-20020ab035e1000000b0055aa7aa076fmr1206774uau.15.1672769381556; Tue, 03 Jan
 2023 10:09:41 -0800 (PST)
MIME-Version: 1.0
References: <20221119212436.2028208-1-festevam@gmail.com> <20221231070436.GF6112@T480>
In-Reply-To: <20221231070436.GF6112@T480>
From:   Tim Harvey <tharvey@gateworks.com>
Date:   Tue, 3 Jan 2023 10:09:29 -0800
Message-ID: <CAJ+vNU3=54ZELLf1Oub3rHUCL3OkSM3B=vNOCHruUokUxd5+hg@mail.gmail.com>
Subject: Re: [RFC] ARM: dts: imx6qdl-gw560x: Remove incorrect 'uart-has-rtscts'
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Fabio Estevam <festevam@gmail.com>,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Dec 30, 2022 at 11:04 PM Shawn Guo <shawnguo@kernel.org> wrote:
>
> On Sat, Nov 19, 2022 at 06:24:36PM -0300, Fabio Estevam wrote:
> > From: Fabio Estevam <festevam@denx.de>
> >
> > The following build warning is seen when running:
> > make dtbs_check DT_SCHEMA_FILES=fsl-imx-uart.yaml
> >
> > arch/arm/boot/dts/imx6dl-gw560x.dtb: serial@2020000: rts-gpios: False schema does not allow [[20, 1, 0]]
> >       From schema: Documentation/devicetree/bindings/serial/fsl-imx-uart.yaml
> >
> > The imx6qdl-gw560x board does not expose the UART RTS and CTS
> > as native pins, so 'uart-has-rtscts' should not be used.
> >
> > Fix the problem by removing the 'uart-has-rtscts' property.
> >
> > Fixes: b8a559feffb2 ("ARM: dts: imx: add Gateworks Ventana GW5600 support")
> > Signed-off-by: Fabio Estevam <festevam@denx.de>
> > ---
> > Hi,
> >
> > My understanding is that uart-has-rtscts indicates that the UART RTS
> > and CTS pins are used natively and we cannot use uart-has-rtscts with
> > rts-gpios.
> >
> > If this is correct, then I can also submit a patch fixing the arm64 Gateworks
> > boards too.
>
> Tim,
>
> Any comments?
>
> Shawn

Shawn and Fabio,

Yes Fabio's change makes sense. Sorry, I missed this as I wasn't on
the 'to' list.

Fabio has sent a patch so I'll ack it there.

Best Regards,

Tim
