Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C82451FC62
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2019 23:43:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726381AbfEOVnc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 May 2019 17:43:32 -0400
Received: from mail-ua1-f68.google.com ([209.85.222.68]:44193 "EHLO
        mail-ua1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726487AbfEOVna (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 May 2019 17:43:30 -0400
Received: by mail-ua1-f68.google.com with SMTP id p13so463926uaa.11
        for <devicetree@vger.kernel.org>; Wed, 15 May 2019 14:43:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Kjfknf32vTN6dOCTbKM2s4UhXiubagFxAlST3GyPe/4=;
        b=GR//cp3pkBQCdrHCiA7U78cbGHrhAthjeR/dCjmIIoD5qYQZuteM3NaBSy+HNbvY48
         IvgNM0VAE85ycebNJSfBDPE3hfaZSJCDQ23VFwYM5vosvYKqaPXIMso4VLQPi1wCqPof
         nH2b4nPE7GE05LNfkK8yd9VHThgjZlNPDOpZg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Kjfknf32vTN6dOCTbKM2s4UhXiubagFxAlST3GyPe/4=;
        b=HzbSPk6/ZTxk9Gd3mVpsMX3OT5dyYUujoqQRYZXB7Be26UjVvb2uIpRtjOJtAJm0kC
         ZIuA2CfRY8lbu15U/6dVkPOS2fhjeVLVWQVyFiWvQoXVlIkthU/g9cR3R/Ji7BplS9SS
         KH9yuLjrjWb384pKmJS8uqA+TdtX9odRGUTvZlIbZxoyUGh9/5avQMQCn/Q9R3sO1qLa
         B0gcRUZdMO0LKMacRjSEjfyIC0/kNrCJrHlM0xzDwZqUa5FFww1a3K8f+l+9BqM1Wv4b
         za0Xx1lnlDp2VxbVXiWSvVP3z6Fxh6A5q9NDMndb6nm4Q3VFw5Mn3fMVMGnFdnoW3QvH
         ElAg==
X-Gm-Message-State: APjAAAVpllgL0Q0DEMbmescca09mCV+WRTQcAJBKjPhnur/lrlWrOy0K
        0uh7HEtaH1LfFhyuPxf8TOP+rWSbL7w=
X-Google-Smtp-Source: APXvYqwJXKFtY5yh3NoW7IpLxU0qwvbo6jqkY5w2MCjJnCUE0+31FjaEPhdcY0r73x1/nEgLK6n1Ow==
X-Received: by 2002:ab0:2051:: with SMTP id g17mr8761642ual.117.1557956609050;
        Wed, 15 May 2019 14:43:29 -0700 (PDT)
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com. [209.85.217.47])
        by smtp.gmail.com with ESMTPSA id t189sm1483969vke.31.2019.05.15.14.43.26
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 May 2019 14:43:26 -0700 (PDT)
Received: by mail-vs1-f47.google.com with SMTP id y6so975695vsb.0
        for <devicetree@vger.kernel.org>; Wed, 15 May 2019 14:43:26 -0700 (PDT)
X-Received: by 2002:a67:79ca:: with SMTP id u193mr20557958vsc.20.1557956606068;
 Wed, 15 May 2019 14:43:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190509184415.11592-1-robdclark@gmail.com> <20190509184415.11592-4-robdclark@gmail.com>
In-Reply-To: <20190509184415.11592-4-robdclark@gmail.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 15 May 2019 14:43:13 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Xa0kAReU7CFvO8QiCRkNxGaQY_JohK+psykqeN9e+QJw@mail.gmail.com>
Message-ID: <CAD=FV=Xa0kAReU7CFvO8QiCRkNxGaQY_JohK+psykqeN9e+QJw@mail.gmail.com>
Subject: Re: [RFC 3/3] arm64: dts: qcom: sdm845-cheza: delete zap-shader
To:     Rob Clark <robdclark@gmail.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Rob Clark <robdclark@chromium.org>,
        Andy Gross <andy.gross@linaro.org>,
        David Brown <david.brown@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
        Jordan Crouse <jcrouse@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, May 9, 2019 at 12:08 PM Rob Clark <robdclark@gmail.com> wrote:

> From: Rob Clark <robdclark@chromium.org>
>
> This is unused on cheza.  Delete the node to get rid of the reserved-
> memory section, and to avoid the driver from attempting to load a zap
> shader that doesn't exist every time it powers up the GPU.
>
> Signed-off-by: Rob Clark <robdclark@chromium.org>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi | 2 ++
>  arch/arm64/boot/dts/qcom/sdm845.dtsi       | 2 +-

nit: up to Bjorn / Andy, but personally I'd put cheza and non-cheza
changes in two patches.


>  2 files changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi b/arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi
> index 8ccbe246dff4..28c28517b21a 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi
> @@ -175,6 +175,8 @@
>  /delete-node/ &venus_mem;
>  /delete-node/ &cdsp_mem;
>  /delete-node/ &cdsp_pas;
> +/delete-node/ &zap_shader;

nit: I'd probably move the delete of the zap shader to a slightly
different place just because the rest of the lines here are deleting
reserved memory regions.

Other than nits this seems OK to me.  Not that I know anything about
the zap shader or why a zap shader wouldn't be appropriate for cheza.

-Doug
