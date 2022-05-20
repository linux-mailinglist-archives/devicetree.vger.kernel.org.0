Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6016352E219
	for <lists+devicetree@lfdr.de>; Fri, 20 May 2022 03:39:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344568AbiETBjo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 May 2022 21:39:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59400 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344567AbiETBjo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 May 2022 21:39:44 -0400
Received: from mail-qt1-x835.google.com (mail-qt1-x835.google.com [IPv6:2607:f8b0:4864:20::835])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CAF209A9AB
        for <devicetree@vger.kernel.org>; Thu, 19 May 2022 18:39:42 -0700 (PDT)
Received: by mail-qt1-x835.google.com with SMTP id v14so6076814qtc.3
        for <devicetree@vger.kernel.org>; Thu, 19 May 2022 18:39:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SuTumshxfmQSff783bfM7dkeojcdsq2Dy5++uaDGngM=;
        b=jpF2BnRc/lHDfrO29tpAde7HLvwuXynvtU50/LbumpUMVkYmTUt1FM6EFD+fI9I39b
         SiTN+rVS57+BZIGEYP7rZrNAQOa+XVUz6FkTL0vXBGgcy/huOi+K7FV+jsPVrzDgG4kS
         CbGLM1KfS78jDb+tE6q2vd21NcLahfZVe26T6iBBzxlkC1yZmj/uZPMIS5OE9lrjFxSz
         pqnW3h0Eby3RoMNuHIFl/vktZrYyNhyLBjzEW33UXGAw52p6wepSsgxTHHRiUzRxQPjY
         FeXg8BNi2l1mBdacL5pgwixAZDiTAUzRuF4iQGwYNrbnrmuWU4ddJynkMYgVZ0Kvrx3v
         lvGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SuTumshxfmQSff783bfM7dkeojcdsq2Dy5++uaDGngM=;
        b=kIavGU1n1QiQIgvLF9VR0HFivLzPc/Ytcot2ArRupR5dFghNraLVVRt/c7HqQV0KtL
         y8enenrTQiuC+YAVOtSNTL2Wwks4LKhXyhz0pfqDC6qBhzWVgKIIwR94i/kOTSwwOJjV
         xhvEw/e2TiVPFqVPR7Jr6txlk4K3FOEBgFAfyc7hidOuYXQoDhldwVKHf5WonUayA5+u
         ewPwdp3Svhrrl7qyCn1ccPHPBL9Zi7fd5iPzfua4ioIqKIvrUJpQi4ok73ocVFj8zAN+
         L1ouI+jrXMQPOBZjG0dCYItQqSdpxhHkPpuxUiZywheXRK+WtLIv80b8bqNtOo5yFNJZ
         lPlQ==
X-Gm-Message-State: AOAM532ayh3DlSjnQNXA3l+9ETBX9Xxv44t8QiJTlu5hbh010krJj1q9
        9y88O4Pb+Z0S820F1VrVdwXprEhaldmUuRfE0WBsmg==
X-Google-Smtp-Source: ABdhPJwPpQxTT2b5TQoj7i/anXLCP4hFsOQ7l0kInn/8xQOfE94BkR4bA90/+ftmo9sJOcnbLmBu+kf1a79nAEeru+8=
X-Received: by 2002:ac8:4e45:0:b0:2f9:fc2:ee3a with SMTP id
 e5-20020ac84e45000000b002f90fc2ee3amr5016433qtw.370.1653010781900; Thu, 19
 May 2022 18:39:41 -0700 (PDT)
MIME-Version: 1.0
References: <a3c932d1-a102-ce18-deea-18cbbd05ecab@linaro.org>
 <35051bec-98ea-b4c5-f734-06b3f22f3562@linaro.org> <8a90ffbc-b376-9115-fb91-0b46d98873b7@linaro.org>
 <40f29157-52c0-001f-6c14-fb90b351756a@linaro.org> <20220519221227.B66D3C385AA@smtp.kernel.org>
In-Reply-To: <20220519221227.B66D3C385AA@smtp.kernel.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Fri, 20 May 2022 04:39:30 +0300
Message-ID: <CAA8EJpqjcAcoooaZ6iTSCy4B1x4=HTUgvJ4VqX_Fr_hSMEbfDA@mail.gmail.com>
Subject: Re: Removal of qcom,board-id and qcom,msm-id
To:     Stephen Boyd <sboyd@kernel.org>
Cc:     Andy Gross <agross@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Olof Johansson <olof@lixom.net>, Rob Herring <robh@kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 20 May 2022 at 01:12, Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Dmitry Baryshkov (2022-05-19 05:46:53)
> > On 19/05/2022 14:53, Krzysztof Kozlowski wrote:
> > > On 19/05/2022 13:39, Dmitry Baryshkov wrote:
> > >> On 19/05/2022 13:44, Krzysztof Kozlowski wrote:
> > >>> Hi,
> > >>>
> > >>> There was an old effort of removal of qcom,board-id and qcom,msm-id
> > >>> properties from Qualcomm SoC-based boards like [1].
> > >>>
> > >>> First approach was to document them, which (obviously) was not well
> > >>> received [2] [3] [4].
> > >>>
> > >>> The solution from Stephen was to encode these in the board compatible,
> > >>> so bootloader can extract that information. That seemed to receive
> > >>> positive comments, at least from Rob. [5]
> > >>>
> > >>> It was 2015... ~7 years later we are still things doing the same way,
> > >>> still with undocumented properties: qcom,board-id and qcom,msm-id.
> > >>>
> > >>>
> > >>> I would like to revive that topic, but before I start doing something
> > >>> pointless - any guidance on last patch from Stephen [5]? Was it ok? Some
> > >>> early NAKs?
> > >>
> > >> I do not quite fancy the idea of using extra tools to process dtb files.
> > >> At this moment it is possible to concatenate several kernel-generated
> > >> dtb files together. AOSP developers use this to have an image that boots
> > >> on both RB3 and RB5 boards.
> > >>
> > >> I think that changing compat strings only makes sense if Qualcomm would
> > >> use such compat strings in future. Otherwise we end up in a position
> > >> where we have custom bootloaders for the RB3/RB5/etc, but the majority
> > >> of the board requires extra processing steps.
> > >
> > > This was discussed in [2] [3] and [4] (previous links) and did not pass.
> > >
> > > Do you have any new arguments for above objections from Arnd, Olof and
> > > Rob? I don't think patch will get accepted if previous concerns during
> > > review are not addressed...
> >
> > I'm not sure if the patches to the dtbTool have landed or not.
> > Anyway, as I said, I don't think post-processing the dtb is good way to
> > go. It makes extremely hard to check that the dtb, used by the kernel or
> > being a part of the boot.img, corresponds to this or that compiled dtb.
>
> One option would be to work it into upstream DTC :P Then the properties
> could be injected during the compilation stage. Note that DTC already
> injects properties like linux,phandle so I'm not really following how
> dtbTool mucking with the DTB is any different.

See, after running make dtbs you get a set of artifacts, Image.gz and
set of dtbs (yes, extended with phandle/linux,phandle).
Then one generates a boot.img. Now without the dtbTool step you can
dissect the boot.img and verify that dtbs match what you've
generated/provided/etc.
If one employs dtbTool, there no simple way to match dtbs from
boot.img with dtbs from kernel build process. This might be required
e.g. to check what the user has been testing, etc.

> Can you elaborate on what
> is extremely hard? Would working dtbTool into the kernel build process
> alleviate any issues?

From my point of view, yet, it will. So will e.g. using any
preprocessor magic to generate such properties during the dts->dtb
process.

>
> I vaguely recall that the properties had to be extracted during the
> boot.img creation process to create a table of contents header. But
> after some time the bootloader started scanning the DTBs directly for
> the vendor properties and thus the header was deprecated/removed. If the
> bootloader is doing the scanning then I'm not sure what is preventing
> the properties from being documented and allowed. I think the main
> rejection was that the properties were added purely to be extracted
> during post processing and placed into the table of contents header,
> i.e. they weren't actually used by the kernel or the bootloader. If they
> are now used by the bootloader it sounds OK to me if they're kept
> around.

Yes, as far as I understand, they are used by the bootloader directly.

-- 
With best wishes
Dmitry
