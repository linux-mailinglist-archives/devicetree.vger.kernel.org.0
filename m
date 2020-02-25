Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A1D8116C038
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2020 13:06:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730392AbgBYMGy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Feb 2020 07:06:54 -0500
Received: from mail-lf1-f68.google.com ([209.85.167.68]:42638 "EHLO
        mail-lf1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729417AbgBYMGy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Feb 2020 07:06:54 -0500
Received: by mail-lf1-f68.google.com with SMTP id 83so9555417lfh.9
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2020 04:06:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=qL37Y4QwC2H5BVQcBjGxnhk5Q0ixQAlzjLOKjSRSjzg=;
        b=sAPoYCpPeqNu1VtPX1gXiQd8dXC9Ud2kT4nsPsqkPjP3zT0K32Y/IeK8JfXh4BF3lr
         jkwYdlfWZcPTDjrbWeWEh40nPgt+T4+MmNrd5i4YpaaUuJbjXprQyie7WiLLWVLFI612
         vbcV8uCfmIUI7JIY0nhk7p2ChzdllK/kao+L+oCjBRyTGOTcX9bAcO4OVnYTeHRis5oB
         ELDgUbJn4tdo9imAGxWaOWsdEsvshYK0XFKDf36phutEiWJda7cdLhBXYMFC1WeE8PbK
         rCZH4JLpQY/MDgFCrCAY8ibiVOREbl4XByl7pwe4wXdFMsCecj5eoeq/tSHCk4PmtLSK
         q0eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=qL37Y4QwC2H5BVQcBjGxnhk5Q0ixQAlzjLOKjSRSjzg=;
        b=d5dwma7TPbOgOcIac+2XvVeQPPGHO6vDT+j0yYtrGvTbcfNlgAR+ZHqQ4pPcq7s2zJ
         WWOeXLmY0pyU6yP+KDvEEVX2qUdN/iPaJ/kYO+etP2zn6WohcLhJ/LFP473f6xTgBGkJ
         pZD+OWzBJhaiNBGCpAmWYU1O2DPzx+wsKgXGR3qyBeboaqMGJ6Bm3yU2lRZpZEYFQM2g
         O5P5e9hUwUpz2lU0aVMwP5uf/Rvs9PpA9VupKrWgFx8SD6+iPlIuOhLa50N75IOW+Gxf
         SPnHj7PgkDBUqEBMJpRm+Qyin8fRZghOsSxTeYazhfmXCi5IP3p4t7E53oKdVoBR+g99
         GOvA==
X-Gm-Message-State: APjAAAVCcf6ExTn5zoHwPq0TS4BOepzcNEmIbTQIJzubcYwEAlcZVoo4
        nXpyDYA4d2C6ktczXDG/D6pOQvkZafvk4+6Rr2FKKQ==
X-Google-Smtp-Source: APXvYqx4hD9HaTlSuNdaASWszKdhnnTGw4UdpRdVSDuvLrBOJV88/DSZ6LkAIwOgsPHB/a0L3ZRa+lZx6hi8twr3z8I=
X-Received: by 2002:ac2:5a05:: with SMTP id q5mr6326196lfn.143.1582632411863;
 Tue, 25 Feb 2020 04:06:51 -0800 (PST)
MIME-Version: 1.0
References: <cover.1582615616.git.amit.kucheria@linaro.org>
 <0f506cfdd8eb9d50b5eb43c9dca510284ac8ded1.1582615616.git.amit.kucheria@linaro.org>
 <20200225101614.GN2618@vkoul-mobl>
In-Reply-To: <20200225101614.GN2618@vkoul-mobl>
From:   Amit Kucheria <amit.kucheria@linaro.org>
Date:   Tue, 25 Feb 2020 17:36:40 +0530
Message-ID: <CAP245DUh2zZA=pfhoYswuffdR1_p72QR73SdWJCH8w8XySFpvg@mail.gmail.com>
Subject: Re: [PATCH v1 1/3] dt-bindings: thermal: tsens: Make dtbs_check pass
 for sc7180 tsens
To:     Vinod Koul <vkoul@kernel.org>
Cc:     Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        sivaa@codeaurora.org, Andy Gross <agross@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Amit Kucheria <amit.kucheria@verdurent.com>,
        Linux PM list <linux-pm@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Feb 25, 2020 at 3:46 PM Vinod Koul <vkoul@kernel.org> wrote:
>
> On 25-02-20, 13:01, Amit Kucheria wrote:
> > Fixes the following warnings:
> > builds/arch/arm64/boot/dts/qcom/sc7180-idp.dt.yaml:
> > thermal-sensor@c263000: compatible: ['qcom,sc7180-tsens',
> > 'qcom,tsens-v2'] is not valid under any of the given schemas (Possible
> > causes of the failure):
> > builds/arch/arm64/boot/dts/qcom/sc7180-idp.dt.yaml:
> > thermal-sensor@c263000: compatible:0: 'qcom,sc7180-tsens' is not one of
> > ['qcom,msm8916-tsens', 'qcom,msm8974-tsens']
> > builds/arch/arm64/boot/dts/qcom/sc7180-idp.dt.yaml:
> > thermal-sensor@c263000: compatible:0: 'qcom,sc7180-tsens' is not one of
> > ['qcom,msm8976-tsens', 'qcom,qcs404-tsens']
> > builds/arch/arm64/boot/dts/qcom/sc7180-idp.dt.yaml:
> > thermal-sensor@c263000: compatible:0: 'qcom,sc7180-tsens' is not one of
> > ['qcom,msm8996-tsens', 'qcom,msm8998-tsens', 'qcom,sdm845-tsens']
> > builds/arch/arm64/boot/dts/qcom/sc7180-idp.dt.yaml:
> > thermal-sensor@c263000: compatible:1: 'qcom,tsens-v0_1' was expected
> > builds/arch/arm64/boot/dts/qcom/sc7180-idp.dt.yaml:
> > thermal-sensor@c263000: compatible:1: 'qcom,tsens-v1' was expected
>
> I think the patch title should be "add qcom,sc7180-tsens to  qcom-tsens.yaml"
>
> and it would be great to see explanation on how adding it fixes these
> warns.

Agreed. I'll send out a new version with the commit messages fixed.

> Relooking at series I think this applies to rest of the series too :)
>

Thanks for the review.
