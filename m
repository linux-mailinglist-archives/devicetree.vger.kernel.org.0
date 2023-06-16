Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B1E98733CC6
	for <lists+devicetree@lfdr.de>; Sat, 17 Jun 2023 01:18:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233528AbjFPXST (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jun 2023 19:18:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233633AbjFPXSS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jun 2023 19:18:18 -0400
Received: from mail-oa1-x2d.google.com (mail-oa1-x2d.google.com [IPv6:2001:4860:4864:20::2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48F2B3AA5
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 16:18:16 -0700 (PDT)
Received: by mail-oa1-x2d.google.com with SMTP id 586e51a60fabf-19f3550bcceso1392659fac.0
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 16:18:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686957495; x=1689549495;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Qge4/dRRApZomDbFyg1vAjWVp9CApZApZeo8Q9XE8OY=;
        b=Im7pFeXbyMxHJQQgICdgMOLfg5K1yl3zSXtqezQiMs5QHGWQN1gc2z8Uj0IQBXAWT3
         6GeX6Eg7ckk7B17gMYe+TwUJCJbifiMNOLZPWMfeW1Jau6cbOSYUwh4oVwlVLZllbcWH
         K1iTjeJPLVm3/ERGFKVrA2k6YdkkQo6FyQSeQ7LqIaiqHMrhKxyANMvvrdpRZDr5UE4G
         a92gZuuxF2bHM5Qawl7qECbqqeOrDQppwHOGlM1Ym73YCWFpHpxkIwxVqDktXtHl8PxG
         S0hM0/ECh7c5Xrbpa0rF2LUJ9EjuYEcaGHiqNcrjRh0JWEX6SZHxHXSearjcZpRacjYz
         22PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686957495; x=1689549495;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Qge4/dRRApZomDbFyg1vAjWVp9CApZApZeo8Q9XE8OY=;
        b=CX8+vcymuYyeBSi01bf26Yt7Y5X5iTZkNe7GwU1e1Kal0Lmc9x8qw+t4Lq65RU4OqJ
         ac+NqoYUczIaop+m7RP/pb9ZwIJn5YZWvb4/+HQnPae/x14QFanXUxs2Yu+7isz6w/BW
         Kmk2aEe2JUe6/uBrftXTSVXZzVb4SiM+3EEgQrIh/yqo7UTaTDl/RKmLeMn1mGLPDsJH
         RATUGRF/I+LQHPpw2rwx4sR1OEPeXb+b0IawxAzeZT+jXtCIBCraBvZdFjkIQEaAjQxA
         rXO++aRc3r+y8YcWBLQajlPaidBryBHFkbQ/6WUkPPXNxdtgOeHv7isvRSMlOfqjrofO
         hzJw==
X-Gm-Message-State: AC+VfDzkJ6jxQ7rT8tivupn8CrDXdTyV2NBTmRkQMlQ8hzkuvdcdq8Pc
        FrJ4zwLn3lRudrrH5J7rNoZ82kcLTRoswxZhwIGcRQ==
X-Google-Smtp-Source: ACHHUZ6/s/ZgazEtI2SqU4B5wS2lpSygCMX+zfSho1b8TF3/xGQ0t8zB9RT5AOQXzCwwQWk4hj0f7pHcBQsZVJTJ9lc=
X-Received: by 2002:a05:6870:111a:b0:1a9:ed28:8d35 with SMTP id
 26-20020a056870111a00b001a9ed288d35mr432390oaf.50.1686957495488; Fri, 16 Jun
 2023 16:18:15 -0700 (PDT)
MIME-Version: 1.0
References: <20230616035813.255062-1-jaswinder.singh@linaro.org>
 <165dd295-1b3a-5062-772a-613a7bf6fd45@linaro.org> <CAJe_ZhdV3yaKUVD43duO4hkGMByJhq7x9bN+eBXJdBXdxgDneg@mail.gmail.com>
 <e2b98d80-8e9a-6083-3bc5-677bef0d3263@linaro.org> <CAJe_ZhfeYmxjR7Hcht0F9rc97VG2JCFEEFB+S5kUhSCmsut3Cg@mail.gmail.com>
 <661800ab-c363-49f2-4889-c458a7b298c4@linaro.org>
In-Reply-To: <661800ab-c363-49f2-4889-c458a7b298c4@linaro.org>
From:   Jassi Brar <jaswinder.singh@linaro.org>
Date:   Fri, 16 Jun 2023 18:18:04 -0500
Message-ID: <CAJe_Zhe9CKNC_B6y_YxEY_Nz765GQghg1ivYSOROJH8A7FKcnA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: arm: socionext: add bindings for the
 Synquacer platform
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh@kernel.org,
        ilias.apalodimas@linaro.org, masahisa.kojima@linaro.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 16 Jun 2023 at 15:34, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 16/06/2023 22:06, Jassi Brar wrote:
> > On Fri, 16 Jun 2023 at 11:47, Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> wrote:
> >>
> >> On 16/06/2023 18:23, Jassi Brar wrote:
> >>> On Fri, 16 Jun 2023 at 05:15, Krzysztof Kozlowski
> >>> <krzysztof.kozlowski@linaro.org> wrote:
> >>>>
> >>>> On 16/06/2023 05:58, jaswinder.singh@linaro.org wrote:
> >>>>> From: Jassi Brar <jaswinder.singh@linaro.org>
> >>>>>
> >>>>> Socionext's DeveloperBox is based on the SC2A11B SoC (Synquacer).
> >>>>> Specify bindings for the platform and boards based on that.
> >>>>
> >>>> A nit, subject: drop second/last, redundant "bindings". The
> >>>> "dt-bindings" prefix is already stating that these are bindings.
> >>>>
> >>> I can remove it, but I see many mentions like "Fix bindings for"  "Add
> >>> binding for" etc in the subject line.
> >>
> >> Can we fix them as well?
> >>
> > ??
> What else I can say to such argument?
>
It was not an argument, I agreed to remove it. I just observed that
the nit-pick was arbitrary.
And frankly
   "dt-bindings: arm: socionext: add Synquacer"   is as misleading as
   "dt-bindings: arm: socionext: add bindings for the Synquacer"   is improper.


> >>>>
> >>>> Binding without it's user is usually useless. Where is the user?
> >>>>
> >>> It is required for SystemReady-2.0 certification.
> >>
> >> For what? If there is no user, it is not required for SR. We don't
> >> document compatibles for something which does not exist in the projects.
> >>
> > The dts/dtsi for synquacer will be added later.
> > I am sure you are aware that there are countless bindings without
> > actual use in any dts/dtsi.
>
> Bindings without user (so no DTSI and no driver)? Just few, not countless.
>
I disagree. But I don't have time to write a script to find
compatibles/enums and properties in yaml/txt files that are not in any
dts/dtsi file.
 By that logic synquacer's spi/netsec/i2c/exiu bindings and drivers in
kernel are illegit too?

Also the user may not be in Linux, but we keep "os-agnostic" bindings in Linux.
The synquacer dts/dtsi are in u-boot upstream. SR testsuite looks up
the underlying platform name and checks if the bindings are merged
upstream.
While I am not against also submitting dts/dtsi in linux, I don't
think the binding should be held at ransom.

> > When exactly did it become mandatory to
> > have dts/dtsi for the bindings to be merged upstream?
>
> It was always. We do not want/need to document downstream stuff or
> anything  just because it is somewhere there.
>
I am not asking you to merge an obscure internal revision of some SoC.
Synquacer is a public development platform and a "96board" already
certified for SR-1.0.

thnx.
