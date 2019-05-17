Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7026F21D9C
	for <lists+devicetree@lfdr.de>; Fri, 17 May 2019 20:43:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727401AbfEQSn1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 May 2019 14:43:27 -0400
Received: from mail-vk1-f193.google.com ([209.85.221.193]:46629 "EHLO
        mail-vk1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726974AbfEQSn1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 May 2019 14:43:27 -0400
Received: by mail-vk1-f193.google.com with SMTP id g194so642458vke.13
        for <devicetree@vger.kernel.org>; Fri, 17 May 2019 11:43:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=D7Ld6ak/BcDR+qMn0+Bwsy5o52SxdEie1Dd6vVWMNQc=;
        b=f0K0xxpVCF0ZLjARllhNmUlWPrNzNN5Nc31omR/w66TNZzX+6LZi+uLIHRG3pOjbld
         Gz5edzdihDaQQN/cpB2qydPoWipFpiGBOL0D0BXOabrGcCiX/KO1sGrfrMjUCGjDWKd7
         jKY9WFgb8JoT9kHtActzd8jbPHp6fFMTBZJ+s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=D7Ld6ak/BcDR+qMn0+Bwsy5o52SxdEie1Dd6vVWMNQc=;
        b=OzGIOxWuxxgiZ6QSSP6foBBS0zntUqFotdKo1XTcND+OjKonNdTx8Y7ahdaksOygCU
         k1C2AQzmDxy1OubE/63Ht2o9xQ1Wj1rGBnXvMBYDCCzQPaQGNZ5ArKLZCkFCvQv4z5Ih
         8JiXWbInNqoAwmRqavLPann7sFi/6IKtvr672AZco930by1IEQzyDZxzW1iLxBNR/fvc
         8wBa2MwRN4HlhZDonZ4rskYQxflzOHfNbg0NUQFfLUbeph/w3zReq5Xvql6/FQx79yr7
         A3hkbCk9a7hVz1LxYxcJoGwfWrBOZc0EfvA3ChyfdOhsZ2UQog4FourJ6EE6qR9S7meQ
         tLZA==
X-Gm-Message-State: APjAAAXsWfoSspo3zjLF6Gr+HHarHH+MR4hV7L6p+MWAlXYFpnCdwcG3
        9GunNHQ7cpBUEMviUtbpxCjiGegPD3c=
X-Google-Smtp-Source: APXvYqwpUXdNsOnafgow3Dmss0sT6aORmt8Cf+VtO2o0VCJHRoYMtlslPhaXMMbYi+pe78faz6NwhQ==
X-Received: by 2002:a1f:fe81:: with SMTP id l123mr143251vki.51.1558118606180;
        Fri, 17 May 2019 11:43:26 -0700 (PDT)
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com. [209.85.222.50])
        by smtp.gmail.com with ESMTPSA id s78sm4189849vke.1.2019.05.17.11.43.25
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 May 2019 11:43:25 -0700 (PDT)
Received: by mail-ua1-f50.google.com with SMTP id n7so3051513uap.12
        for <devicetree@vger.kernel.org>; Fri, 17 May 2019 11:43:25 -0700 (PDT)
X-Received: by 2002:a9f:24a3:: with SMTP id 32mr5229332uar.109.1558118110537;
 Fri, 17 May 2019 11:35:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190517015305.23194-1-robdclark@gmail.com>
In-Reply-To: <20190517015305.23194-1-robdclark@gmail.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 17 May 2019 11:34:59 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XWz9iigg-GWrKZdsYePhH7==d3hZ9kZDXKeEuwLXOhaw@mail.gmail.com>
Message-ID: <CAD=FV=XWz9iigg-GWrKZdsYePhH7==d3hZ9kZDXKeEuwLXOhaw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sdm845-cheza: add initial cheza dt
To:     Rob Clark <robdclark@gmail.com>
Cc:     linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Clark <robdclark@chromium.org>,
        Sibi Sankar <sibis@codeaurora.org>,
        Evan Green <evgreen@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Abhinav Kumar <abhinavk@codeaurora.org>,
        Brian Norris <briannorris@chromium.org>,
        Venkat Gopalakrishnan <venkatg@codeaurora.org>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        Andy Gross <andy.gross@linaro.org>,
        David Brown <david.brown@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, May 16, 2019 at 6:53 PM Rob Clark <robdclark@gmail.com> wrote:
>
> From: Rob Clark <robdclark@chromium.org>
>
> This is essentialy a squash of a bunch of history of cheza dt updates
> from chromium kernel, some of which were themselves squashes of history
> from older chromium kernels.
>
> I don't claim any credit other than wanting to more easily boot upstream
> kernel on cheza to have an easier way to test upstream driver work ;-)
>
> I've added below in Cc tags all the original actual authors (apologies
> if I missed any).
>
> Cc: Douglas Anderson <dianders@chromium.org>
> Cc: Sibi Sankar <sibis@codeaurora.org>
> Cc: Evan Green <evgreen@chromium.org>
> Cc: Matthias Kaehlcke <mka@chromium.org>
> Cc: Abhinav Kumar <abhinavk@codeaurora.org>
> Cc: Brian Norris <briannorris@chromium.org>
> Cc: Venkat Gopalakrishnan <venkatg@codeaurora.org>
> Cc: Rajendra Nayak <rnayak@codeaurora.org>
> Signed-off-by: Rob Clark <robdclark@chromium.org>
> ---
> Updated from review comments and squashed.  I left out the the patch
> related to deleting gpu_mem/zap_shader nodes as the corresponding
> patch that adds them in sdm845.dtsi hasn't landed yet, but once it
> has we will need to revisit that patch for cheza.
>
>  arch/arm64/boot/dts/qcom/Makefile            |    3 +
>  arch/arm64/boot/dts/qcom/sdm845-cheza-r1.dts |  238 ++++
>  arch/arm64/boot/dts/qcom/sdm845-cheza-r2.dts |  238 ++++
>  arch/arm64/boot/dts/qcom/sdm845-cheza-r3.dts |  174 +++
>  arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi   | 1326 ++++++++++++++++++
>  5 files changed, 1979 insertions(+)

Looks sane to me.  Thanks!

Reviewed-by: Douglas Anderson <dianders@chromium.org>
