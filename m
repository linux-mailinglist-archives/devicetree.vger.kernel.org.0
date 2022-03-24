Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5362F4E6A9E
	for <lists+devicetree@lfdr.de>; Thu, 24 Mar 2022 23:24:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355343AbiCXWZa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Mar 2022 18:25:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355337AbiCXWZ3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Mar 2022 18:25:29 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F6672B25F
        for <devicetree@vger.kernel.org>; Thu, 24 Mar 2022 15:23:57 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id dr20so11948908ejc.6
        for <devicetree@vger.kernel.org>; Thu, 24 Mar 2022 15:23:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=a6MBbcTTX+22LzDQ6ECr2bIqiwia88/SS+r4U6tgNmU=;
        b=CvOL71164K8S1OKOR/5ZUvKVejQ6sOY5QjWJX0UL0Zhx3WKZh2jNAzhPX6Z3RbeiCK
         1CtOryJHYEtEZFtFzE7ANmMwsbBx35uLSeqzmt/+/QfSGiwGCvj/y7z8eTzi3tIooWQN
         IZI/EFul54Q9URG80JKdNUuBowY2MUYYRAkrU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=a6MBbcTTX+22LzDQ6ECr2bIqiwia88/SS+r4U6tgNmU=;
        b=vIjaXq+8wlA9LZNXfZv+9XSXdpxnB81apSkwwWpEWsRPfqjVzdyRSkoLIFDkUlMXt6
         5UyfkVgPaQtbawWzhoDthnnpJW9LYnWw4of183sKYPLpO0QC8tdZ+x95Wpe75XysRLgB
         wRI9QKq2DxklDKp0y2ruF0ggW9yyEUA1p7yEFqCpwW5LtPPFKVC2kiiaLufGCZ2Ti1gl
         KKjPwIYvT+T50meFO1cssfNhJEHzubX4swb5AWcexshVn7rjLW+Jz+FdfsoAS2VVpt9b
         4C0qxUjQPSiAr+3+fisOryNoMxzrYIeiyGjp9bvE0ge2u5w36hrld563WXxepl8NmOBl
         G5YQ==
X-Gm-Message-State: AOAM530PsA0jJqfpp8aIuELn4ItwpaPSStNvz07fP61rntefqn1KPu/s
        44+uVVmDOWRFeSaSw5uiqu+skh3URcL36lMX
X-Google-Smtp-Source: ABdhPJyowENzPb5GNZ7oned2XyQxbNWJakIQB9OwUg6/YJE8KUeBq4M6Uha/fWzgop8PCEdJOlHZhA==
X-Received: by 2002:a17:907:168a:b0:6da:9177:9fdd with SMTP id hc10-20020a170907168a00b006da91779fddmr8194933ejc.757.1648160635338;
        Thu, 24 Mar 2022 15:23:55 -0700 (PDT)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com. [209.85.221.48])
        by smtp.gmail.com with ESMTPSA id v26-20020a50955a000000b00418ebdb07ddsm2000328eda.56.2022.03.24.15.23.53
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Mar 2022 15:23:53 -0700 (PDT)
Received: by mail-wr1-f48.google.com with SMTP id u3so8535151wrg.3
        for <devicetree@vger.kernel.org>; Thu, 24 Mar 2022 15:23:53 -0700 (PDT)
X-Received: by 2002:a5d:4491:0:b0:203:f63a:e89b with SMTP id
 j17-20020a5d4491000000b00203f63ae89bmr6363442wrq.342.1648160632993; Thu, 24
 Mar 2022 15:23:52 -0700 (PDT)
MIME-Version: 1.0
References: <20220324101242.v1.1.Iebdb5af0db7d3d6364cb229a27cd7c668f1063ae@changeid>
 <CAD=FV=XchtJx3ZsL4Bxj29b_-43E8p2fiJ5SBQSzbW8wp+gNfg@mail.gmail.com> <YjzsqyEhxOLwJzUL@google.com>
In-Reply-To: <YjzsqyEhxOLwJzUL@google.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 24 Mar 2022 15:23:40 -0700
X-Gmail-Original-Message-ID: <CAD=FV=W45wydNfUc1vAx228_yQrE6uzyucBhT6sc5_iqktva=A@mail.gmail.com>
Message-ID: <CAD=FV=W45wydNfUc1vAx228_yQrE6uzyucBhT6sc5_iqktva=A@mail.gmail.com>
Subject: Re: [PATCH v1] arm64: dts: qcom: sc7280: Add device tree for
 herobrine villager
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        LKML <linux-kernel@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Mar 24, 2022 at 3:12 PM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> On Thu, Mar 24, 2022 at 12:59:51PM -0700, Doug Anderson wrote:
> > Hi,
> >
> > On Thu, Mar 24, 2022 at 10:13 AM Matthias Kaehlcke <mka@chromium.org> wrote:
> > >
> > > Add a basic device tree for the herobrine villager board.
> > >
> > > Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> > > ---
> > >
> > >  arch/arm64/boot/dts/qcom/Makefile             |   1 +
> > >  .../dts/qcom/sc7280-herobrine-villager-r0.dts | 274 ++++++++++++++++++
> > >  2 files changed, 275 insertions(+)
> >
> > Question: how does this interact with the patch:
> >
> > https://lore.kernel.org/r/20220316172814.v1.3.Iad21bd53f3ac14956b8dbbf3825fc7ab29abdf97@changeid/
> >
> > Specifically, if that patch lands first don't you need to add a patch
> > to turn on "pp3300_codec" ?
>
> Right, I missed that. I'll add it in the next version, thanks!

Great! Make sure to list that other patch as a dependency somewhere
too to help Bjorn when he's able to apply. ;-)


> > I was also looking at whether we should be enabling the wf_cam
> > regulators for villager. I believe that answer is "no",
>
> I agree to keep them disabled.
>
> > but _also_ I believe that we should be _disabling_ the uf_cam
> > regulators for villager, right?
>
> it is not clear yo me which regulator you have in mind for the UF cam,
> could you clarify?

I was thinking of the ones next to the rainbows and unicorns in the
device tree. Oh wait, those were just in my imagination. Please
disregard.

-Doug
