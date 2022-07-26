Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 12DDE580E37
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 09:48:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238333AbiGZHsR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 03:48:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37632 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238332AbiGZHsQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 03:48:16 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43B5929C83
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 00:48:15 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id c12so9367232ede.3
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 00:48:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=FH/29theWqCi+bWe4cZkC9kVr9XrvsNj1wv53N0Mxyo=;
        b=yyUauTSIja1NS2kRSo57hxSmByY69K71T1R02GJNP+Bz+KRkj62kj/6I4QYkyuPnH3
         19aLTtpfVlfw8hNqrFIeHWqKF+mhZnCMyJepWZVhaIkhI575pijXqqm1wOg2+sJapndR
         xa6WKQe7GJ3woUuVnjrDJ+TyrFZkxWAQjfkmrIpNRqc3uvi2OGGMhByUW9dsXTHKeMes
         YpNPNP0XI7SExk9eqs02E2eTIb8yoKSN/RSOIcLaLmlQk3wiQF10yPbXW/x7uqstLbxt
         AN+h0RtlCnFWRnn2RSSA9NBwhBiHu8h8xVWct83S8KQH54VKwIKHUt+I/XEpxGTq7k7+
         ITDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=FH/29theWqCi+bWe4cZkC9kVr9XrvsNj1wv53N0Mxyo=;
        b=03A6b6YTKTu4JUClM+D2gAuLZZMTErnCbefLfsy8M3HezHUS2V/Oy5bGJMIccN5+b0
         jFJA6yBN4PRHf8/eqfusv9nKeZgCS1rMHovVCFH1q5VR4q6T+y70UXTaE72VS9Un+HHc
         1pSkeshtOKT37Hw0DVxiF4A+wcZxaNI9XBm5+B5py+IW6n+B4I2S9kNzNkQIOqE1xErn
         RyFtMPY1wr+RiQ3+4x02hthfhvVVkV1wahTpGF+ejmlWQ60tu7lA1DPo2BT+fHj+SX76
         fHDcxND965Q/Cxq7clxEPEN60Z08CQwiU8TNGkVrp32YmwtZJg6zEdE0LQP0m4S2zWqn
         HDJg==
X-Gm-Message-State: AJIora9M4w5Sm1vR1enoswDOIcvVIXpAaYOjgPJDKPzKiH8OR5bqdvFs
        qVkKDv0LSN9y9sx60Nuz05kf8vX764exvptjlZHN8w==
X-Google-Smtp-Source: AGRyM1uZga0NmMKKnrtL7tNwX0yv1AqXO6WwrAuYMFC0JhsER8PGlbr+vexB48sBx+y4/hFXsFUplNR17/2NCvfE8Y0=
X-Received: by 2002:a05:6402:430b:b0:43b:e639:8b25 with SMTP id
 m11-20020a056402430b00b0043be6398b25mr13083404edc.205.1658821693599; Tue, 26
 Jul 2022 00:48:13 -0700 (PDT)
MIME-Version: 1.0
References: <20220721093422.2173982-1-marcus.folkesson@gmail.com> <20220721093422.2173982-2-marcus.folkesson@gmail.com>
In-Reply-To: <20220721093422.2173982-2-marcus.folkesson@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 26 Jul 2022 09:48:02 +0200
Message-ID: <CACRpkdZJZ6JwGDLdPHqb8WW+fN+tAYNDD-ERwo4h2ftZ0cGEqg@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: gpio: fairchild,74hc595: add
 strobe-gpios property
To:     Marcus Folkesson <marcus.folkesson@gmail.com>
Cc:     Bartosz Golaszewski <brgl@bgdev.pl>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Ripard <mripard@kernel.org>, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 21, 2022 at 11:30 AM Marcus Folkesson
<marcus.folkesson@gmail.com> wrote:

> Some shift registers (74hc4094 for example) has a strobe signal to latch
> data from the serial input to the parallel output.
>
> Add an optional strobe-gpios property to support those chips.
>
> Signed-off-by: Marcus Folkesson <marcus.folkesson@gmail.com>

As pointed out in discussion with Andy, let's drop this and just
use cs-gpios as-is.

Yours,
Linus Walleij
