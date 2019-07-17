Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D4B8F6C084
	for <lists+devicetree@lfdr.de>; Wed, 17 Jul 2019 19:40:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388019AbfGQRkg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Jul 2019 13:40:36 -0400
Received: from mail-io1-f67.google.com ([209.85.166.67]:42672 "EHLO
        mail-io1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727255AbfGQRkg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Jul 2019 13:40:36 -0400
Received: by mail-io1-f67.google.com with SMTP id e20so16739288iob.9
        for <devicetree@vger.kernel.org>; Wed, 17 Jul 2019 10:40:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=EtprvX2m2jiKjt40HUaqm6DF0L2XmUgvKFNwlwgfe5s=;
        b=onK1uDlvUzpAH0JWEzYwI7Gvf91+DZjaIi9SPNFqZfxsb53+3NAu9LR1/dWib49xfe
         uLFyJ7FMnIQIEGQ0aAA+BOeKB0M4zkzQtNBj+FPZfXsvN+zJTblXWCFNbsMLdd87p1PR
         f1FYO8LUIwH3rWdYJcjYDHTdKo7cRweLAnYd5imd3r9/s3Kn8G7/qyVZ1kGVccRhQv5q
         e/0VOtTsNvHhAcAE9qQ8EBKMHPWb1ByA5GRMc9o5r+lh1AT4G4zCxJxc7maGfwIzw2bi
         Voqkjz3HnbhFHZQhBQxtLooaZKPUcCXzbifFxSHKQy2lB7vIH/Kk9T3ucsueYKFKCEo8
         EZrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=EtprvX2m2jiKjt40HUaqm6DF0L2XmUgvKFNwlwgfe5s=;
        b=gcdoQkZG1zrOVJiNJxTOuIH5OpTNPTzxL5ofKAfnu5aOOux9j7bdiRUlQkeyC1a8xx
         HVp1Gnl9Fw76YTzheI7N//g6BphPI2bCVrxpKQW8mLprdS1sdN+x1zfzSjTyQKwYHbNR
         Z0XgdQmLYay0LFOIkVLI0m4tCaVvV/zTMg22K2FOnTi3OiILPwMMkqWRN3nXsGnZ0nhO
         TA94hTuqttYHJRpfkJ/p6hFpcvBxSompzy3Extiuxp6b0USKuVQRmt1hqgX1jADxwyVW
         fxIYhhx19mUIgepv9AHdj39fLkru+tLTRghCAx8hj8IwNu+ZrDtBn4yY1wqwR71MzC1R
         OIJw==
X-Gm-Message-State: APjAAAWk8U/sXd+gmBqdkse5BPGpn1n6AhDkShI7j3kGVq86j2IfOXde
        dlpduGRdXZVNxvl0HWW96YadOXTYilUw6MWtBUUIVw==
X-Google-Smtp-Source: APXvYqz7WG1PnvWMnC23sD+cAu0oINpZh2KIZQ4xQZPYqy1GNt03lquLmfPyqP+Hp51HDnWuG4zkofIf1ZyJXjMZovg=
X-Received: by 2002:a5d:9dc7:: with SMTP id 7mr39088762ioo.237.1563385235830;
 Wed, 17 Jul 2019 10:40:35 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1562940244.git.saiprakash.ranjan@codeaurora.org> <2694eae0731a07eeda11f666526ccff8c6b5842e.1562940244.git.saiprakash.ranjan@codeaurora.org>
In-Reply-To: <2694eae0731a07eeda11f666526ccff8c6b5842e.1562940244.git.saiprakash.ranjan@codeaurora.org>
From:   Mathieu Poirier <mathieu.poirier@linaro.org>
Date:   Wed, 17 Jul 2019 11:40:24 -0600
Message-ID: <CANLsYkw=pAmwoEmXCjLtrUtxLnE8KY5o72Of3aq_-_JHeHyhTA@mail.gmail.com>
Subject: Re: [PATCHv8 4/5] coresight: etm4x: Add ETM PIDs for SDM845 and MSM8996
To:     Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Cc:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Leo Yan <leo.yan@linaro.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Mike Leach <mike.leach@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        devicetree@vger.kernel.org, David Brown <david.brown@linaro.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        Vivek Gautam <vivek.gautam@codeaurora.org>,
        Sibi Sankar <sibis@codeaurora.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Marc Gonzalez <marc.w.gonzalez@free.fr>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 12 Jul 2019 at 08:17, Sai Prakash Ranjan
<saiprakash.ranjan@codeaurora.org> wrote:
>
> Instead of overriding the peripheral id(PID) check in AMBA
> by hardcoding them in DT, add the PIDs to the ETM4x driver.
> Here we use Unique Component Identifier(UCI) for MSM8996
> since the ETM and CPU debug module shares the same PIDs.
> SDM845 does not support CPU debug module.
>
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> ---
>  drivers/hwtracing/coresight/coresight-etm4x.c | 14 +++++++++-----
>  1 file changed, 9 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
> index 7bcac8896fc1..28bcc0e58d7a 100644
> --- a/drivers/hwtracing/coresight/coresight-etm4x.c
> +++ b/drivers/hwtracing/coresight/coresight-etm4x.c
> @@ -1192,11 +1192,15 @@ static struct amba_cs_uci_id uci_id_etm4[] = {
>  };
>
>  static const struct amba_id etm4_ids[] = {
> -       CS_AMBA_ID(0x000bb95d),         /* Cortex-A53 */
> -       CS_AMBA_ID(0x000bb95e),         /* Cortex-A57 */
> -       CS_AMBA_ID(0x000bb95a),         /* Cortex-A72 */
> -       CS_AMBA_ID(0x000bb959),         /* Cortex-A73 */
> -       CS_AMBA_UCI_ID(0x000bb9da, uci_id_etm4),        /* Cortex-A35 */
> +       CS_AMBA_ID(0x000bb95d),                 /* Cortex-A53 */
> +       CS_AMBA_ID(0x000bb95e),                 /* Cortex-A57 */
> +       CS_AMBA_ID(0x000bb95a),                 /* Cortex-A72 */
> +       CS_AMBA_ID(0x000bb959),                 /* Cortex-A73 */
> +       CS_AMBA_UCI_ID(0x000bb9da, uci_id_etm4),/* Cortex-A35 */
> +       CS_AMBA_UCI_ID(0x000f0205, uci_id_etm4),/* Qualcomm Kryo */
> +       CS_AMBA_UCI_ID(0x000f0211, uci_id_etm4),/* Qualcomm Kryo */
> +       CS_AMBA_ID(0x000bb802),                 /* Qualcomm Kryo 385 Cortex-A55 */
> +       CS_AMBA_ID(0x000bb803),                 /* Qualcomm Kryo 385 Cortex-A75 */
>         {},
>  };
>

I have also queued this patch.

> --
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
> of Code Aurora Forum, hosted by The Linux Foundation
>
