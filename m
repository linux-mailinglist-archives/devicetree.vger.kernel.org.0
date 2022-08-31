Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D0B155A80A4
	for <lists+devicetree@lfdr.de>; Wed, 31 Aug 2022 16:53:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229456AbiHaOxK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Aug 2022 10:53:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46110 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229449AbiHaOxJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Aug 2022 10:53:09 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6DD4C9917
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 07:53:08 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id qh18so8632536ejb.7
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 07:53:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=3SBHDQAodprZxU58N6fxxm9XMEGZF1r8qJ0Wxzeitls=;
        b=V3wivMLpqCGUfOvErwvyzMGDMB3actPkoJXjB9x+5QdBvqm1czGegZ67hUVOoXcOJp
         aV3bW0fiY5lgbhj0nESLHHfiLaosxh/WZORVW3dAdHzsGuCDNZZOCddyyR/erM5pSLuc
         B8clr5tOPV87ktHrDNy3qTqsxctKihiE8SXYo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=3SBHDQAodprZxU58N6fxxm9XMEGZF1r8qJ0Wxzeitls=;
        b=qdj4sB+Hn/MBjdvJRK8qvdZ6yMvwzZXTDoaTYP1CbnjQ1NrlaXR9DQWZNJf+Ee7PPV
         RfOBW34fe6+CjiP9y5Y1b5LybjPREM3TiIOmwtd6SL1P0rBKwHHEnQoLn21QYv+3wrbt
         xO+fcD/RgG2CGDRqLpGb/FZ83vgUeA+JMh9yKBVByzlANejBJ0zq0fNcGPRINakE+T75
         okKTYTYJPvcu4B33H1CGPsxbM25raZ2BNJXt13eztMN241dymRiKRQua24iYg7URAui6
         T00Rs9MVnZi+dRxKvz8H/vafQWAisao/5SJbM/WzPaNJ9EGRVUJH6FopuuBC0sKOL9IU
         0HRg==
X-Gm-Message-State: ACgBeo1slYkNo/UYN64fdp5jQIRXLBqLSFGSwlUFTsD3dnEWlHuSw6in
        q0ofXKPoBrEPhJmkCdPTDz7yNEbLWbem8cMV
X-Google-Smtp-Source: AA6agR7rQ95JqvcB+NU6aAFyStQ/PfGaUsgFM2dqKnDHVcdULl3R2Jkpob1DM5IxvAfnFHakUwFK1w==
X-Received: by 2002:a17:907:6d16:b0:731:17b5:699 with SMTP id sa22-20020a1709076d1600b0073117b50699mr22316210ejc.23.1661957587268;
        Wed, 31 Aug 2022 07:53:07 -0700 (PDT)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com. [209.85.221.50])
        by smtp.gmail.com with ESMTPSA id r1-20020a17090609c100b007385e929344sm7227821eje.55.2022.08.31.07.53.04
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Aug 2022 07:53:04 -0700 (PDT)
Received: by mail-wr1-f50.google.com with SMTP id n17so18620251wrm.4
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 07:53:04 -0700 (PDT)
X-Received: by 2002:a05:6000:15c6:b0:226:f246:6e70 with SMTP id
 y6-20020a05600015c600b00226f2466e70mr177095wry.617.1661957584434; Wed, 31 Aug
 2022 07:53:04 -0700 (PDT)
MIME-Version: 1.0
References: <20220829164952.2672848-1-dianders@chromium.org> <Yw8EE/ESDUnIRf8P@hovoldconsulting.com>
In-Reply-To: <Yw8EE/ESDUnIRf8P@hovoldconsulting.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 31 Aug 2022 07:52:52 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VJz2hjvsUhsjBPt9nmm3X62oTdAqMeSFABYJietPPzWw@mail.gmail.com>
Message-ID: <CAD=FV=VJz2hjvsUhsjBPt9nmm3X62oTdAqMeSFABYJietPPzWw@mail.gmail.com>
Subject: Re: [PATCH v2 0/6] arm64: dts: qcom: Fix broken regulator spec on
 RPMH boards
To:     Johan Hovold <johan@kernel.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andrew Halaney <ahalaney@redhat.com>,
        Mark Brown <broonie@kernel.org>,
        Andy Gross <agross@kernel.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Aug 30, 2022 at 11:47 PM Johan Hovold <johan@kernel.org> wrote:
>
> On Mon, Aug 29, 2022 at 09:49:46AM -0700, Douglas Anderson wrote:
> > Prior to commit efb0cb50c427 ("regulator: qcom-rpmh: Implement
> > get_optimum_mode(), not set_load()") several boards were able to
> > change their regulator mode even though they had nothing listed in
> > "regulator-allowed-modes". After that commit (and fixes [1]) we'll be
> > stuck at the initial mode. Discussion of this (again, see [1]) has
> > resulted in the decision that the old dts files were wrong and should
> > be fixed to fully restore old functionality.
> >
> > This series attempts to fix everyone. I've kept each board in a
> > separate patch to make stable / backports work easier.
>
> Should you also update the bindings so that this can be caught during
> devicetree validation? That is, to always require
> "regulator-allowed-modes" when "regulator-allow-set-load" is specified.

Yeah, it's probably a good idea. I'm happy to review a patch that does
that. I'm already quite a few patches deep of submitting random
cleanups because someone mentioned it in a code review. ;-) That's
actually how I got in this mess to begin with. The RPMH change was in
response to a request in a different code review. ...and that came
about in a code review that was posted in response to a comment about
how awkward setting regulator loads was... Need to get back to my day
job.

In any case, I think these dts patches are ready to land now.


> Perhaps at least for RPMh as it seemed you found some cases were this
> wasn't currently needed (even if that sounded like an Linux-specific
> implementation detail).

I think you're talking about the RPM vs. RPMH difference? It's
actually not Linux specific. In RPM the API to the "hardware"
(actually a remote processor) is to pass the load. In RPMH the API to
the hardware is to pass a mode. This is why RPMH has
"regulator-allowed-modes" and "regulator-initial-mode". Both RPM and
RPMH have "regulator-allow-set-load" though...

-Doug
