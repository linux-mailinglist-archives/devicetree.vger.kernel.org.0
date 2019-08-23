Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 09C949A974
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2019 09:59:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731798AbfHWH7p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Aug 2019 03:59:45 -0400
Received: from mail-lf1-f66.google.com ([209.85.167.66]:41935 "EHLO
        mail-lf1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728903AbfHWH7p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Aug 2019 03:59:45 -0400
Received: by mail-lf1-f66.google.com with SMTP id 62so6454992lfa.8
        for <devicetree@vger.kernel.org>; Fri, 23 Aug 2019 00:59:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5z7vfbHtMApujxavzWgIXVc/rQILAwEhpus5OtLUmrs=;
        b=Z5FXlxmuxQ6DfUq/GB4OKAJfLFayCZSEywWTGWPqXb1Ll+4UtGZKe/h7W9WqxZFCL+
         4IiV1fF9W3GkwOQtesDOeraTHg4NaWNA/272Jwc0/BV+GsorLqj06xkS3dvXozEL7G94
         iasZEp6fG435M3O2KNTt9wHYTooFRDhji4NsuwBFQ1jYTuABI9bsPorCe4lFdDtqzLAa
         uLVEd+QUfe5QpHZnrDs9m+BETpOEdGSh05iLf3j26TB4s7L4BXt1q0jhFKZge6kKMizB
         VnC7jra0j8rvzwweeHGsz9xsn8iKUIHd2UekHeIJrYg7MpVeqfZJh8wEZVUW3mgQOsyu
         HhWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5z7vfbHtMApujxavzWgIXVc/rQILAwEhpus5OtLUmrs=;
        b=NKnvuv/dd34HtFpHbA+hl/2b2uN7B808B2zj+JiU7/zPjfaBYS+uLZkWhBKWrRoTlc
         CYzGIWcRmd7Mrq7L+HUBCMvZ5PzCQpW7svwokI5kuDN9Tp/7dlRN1Eou4czQFpybawkp
         vXyvQsQChDOGQZYEXEwrFhQmFgIeVqjgYqb6BfToW0/5P55/pT8iCwpGY+ZSdK3sJIxD
         fvjzUtlP6nFv+3As/LNFdqVysqDC0guRmw6p9NXt8wJakvP80DU/iHEPBCM54UQN5gw5
         Pjmac4zo8H0rw3yQ4f8sX9/PKf+GzkMS3VJeA5V8shWAE8GNyaLV66qaU4ezCFGiAZU9
         Q0vg==
X-Gm-Message-State: APjAAAWJ26y4rNmj3p7FT4ePr2TRmsvs5NzakMKnRpgaHFOB/ojdGP3N
        q3r6U+n/xjUYRulaKiEbKnO4m+UlVMESWzCHdIeDcw==
X-Google-Smtp-Source: APXvYqz/JGdMYhTiM4E2N3WP4i5MloBBgn5IEamDPj4bNWv1rf+cVyUn1fnWDNPWIK8jDrnsG/09l2nJNj1VCjfqiBI=
X-Received: by 2002:ac2:59d0:: with SMTP id x16mr2059258lfn.60.1566547183271;
 Fri, 23 Aug 2019 00:59:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190814123512.6017-1-vkoul@kernel.org> <20190814123512.6017-2-vkoul@kernel.org>
In-Reply-To: <20190814123512.6017-2-vkoul@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 23 Aug 2019 09:59:32 +0200
Message-ID: <CACRpkdZAsuU4kOHjgNT=q_PyONcZgor8CdgRRh=jFtF7YOqbgg@mail.gmail.com>
Subject: Re: [PATCH 2/3] dt-bindings: pinctrl: qcom-pmic-gpio: Add pm8150b support
To:     Vinod Koul <vkoul@kernel.org>
Cc:     MSM <linux-arm-msm@vger.kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 14, 2019 at 2:36 PM Vinod Koul <vkoul@kernel.org> wrote:

> Add support for the PM8150b GPIO support to the Qualcomm PMIC GPIO
> binding.
>
> Signed-off-by: Vinod Koul <vkoul@kernel.org>

Patch applied.

Yours,
Linus Walleij
