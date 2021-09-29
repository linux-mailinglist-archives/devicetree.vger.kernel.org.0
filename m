Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F2FAB41C4E8
	for <lists+devicetree@lfdr.de>; Wed, 29 Sep 2021 14:43:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343842AbhI2Moq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Sep 2021 08:44:46 -0400
Received: from mail.kernel.org ([198.145.29.99]:49304 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1343839AbhI2Moq (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 29 Sep 2021 08:44:46 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 76B9561406;
        Wed, 29 Sep 2021 12:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1632919385;
        bh=cWzLi7i1a/a68Tsb75m2gFcMuYlcPGVTxONILp7CzaA=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=lmgT1zdZ0oLjC5TFc9XmPIIQrBSMYFRL12JFR5LgtCMedubwNzoWj8y7CpB8E2/se
         CHUkVMyTsFiR2/UL9z/e/nJTaAs2SwvkPcITSgbUYLJZ/4WMFIHB2M+3+yVfVbnLII
         UqNor+jqnftZaySO//zGAsuiCypwzqpl8Iu37OybjCaFYTgjuh/bOfkLCf+u61PiC7
         uOEWbK0kG2HmXTu/2oIox9c0MsB+woxNt4l2c1kwkJz3+ht5kOVatOWZZlYT9Wkb3l
         rJ8iMnFsSmEGRP6mqnl6i4MTO8POa6XxcQOFs4WkVrJtPVlf/bCb9rqHd9D/xSeqYH
         V+IUdRkkarhiA==
Received: by mail-ed1-f48.google.com with SMTP id r18so8046350edv.12;
        Wed, 29 Sep 2021 05:43:05 -0700 (PDT)
X-Gm-Message-State: AOAM531GQmGD9U7z99Km77NLV30+QlyJ2SoJwCWo0JmDl2Ab0y6ckxrN
        HzSjq0Oihela99Nmf2rIL8tfbtz9Kv2M5QIi2w==
X-Google-Smtp-Source: ABdhPJxndpOOUJE3NM9jpGO24ny0m+Pmu/7sbkbFayNO5BQqCs07NMgh7wcniLUzz5l8HifNI+tI0MSA3xKXu7azUbM=
X-Received: by 2002:a17:906:c10e:: with SMTP id do14mr9473117ejc.84.1632919384052;
 Wed, 29 Sep 2021 05:43:04 -0700 (PDT)
MIME-Version: 1.0
References: <20210929052613.8589-1-saiprakash.ranjan@codeaurora.org>
In-Reply-To: <20210929052613.8589-1-saiprakash.ranjan@codeaurora.org>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Wed, 29 Sep 2021 07:42:52 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLzDejj99C6CPuW+19cgwdDVkctppL_SFeWnAG5LUkscw@mail.gmail.com>
Message-ID: <CAL_JsqLzDejj99C6CPuW+19cgwdDVkctppL_SFeWnAG5LUkscw@mail.gmail.com>
Subject: Re: [PATCH] Add system-cache-controller to the list of generic node names
To:     Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Cc:     Mailing List <devicetree-spec@vger.kernel.org>,
        devicetree@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rajendra Nayak <rnayak@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 29, 2021 at 12:26 AM Sai Prakash Ranjan
<saiprakash.ranjan@codeaurora.org> wrote:
>
> System Cache Controller (Last Level Cache Controller/LLCC) does not
> have a cache-level associated with it as enforced by the already
> existing 'cache-controller' node name, so add system-cache-controller
> to the list of generic node names as decided on the lkml in [1][2]
> and already being used in the dts for sometime now.
>
> [1] https://lore.kernel.org/lkml/5dcd8588.1c69fb81.2528a.3460@mx.google.com/
> [2] https://lore.kernel.org/lkml/cover.1573814758.git.saiprakash.ranjan@codeaurora.org/
>
> Cc: Stephen Boyd <swboyd@chromium.org>
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Cc: Rajendra Nayak <rnayak@codeaurora.org>
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---
>  source/chapter2-devicetree-basics.rst | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/source/chapter2-devicetree-basics.rst b/source/chapter2-devicetree-basics.rst
> index 40be22192b2f..c06c5063c68b 100644
> --- a/source/chapter2-devicetree-basics.rst
> +++ b/source/chapter2-devicetree-basics.rst
> @@ -276,6 +276,7 @@ name should be one of the following choices:
>     * sram-controller
>     * ssi-controller
>     * syscon
> +   * system-cache-controller

I don't want to encourage others to use this over 'cache-controller'
and the standard binding.

Rob
