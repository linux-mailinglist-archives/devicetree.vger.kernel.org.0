Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7C3F813C651
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2020 15:39:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726574AbgAOOjF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jan 2020 09:39:05 -0500
Received: from mail-ot1-f66.google.com ([209.85.210.66]:45639 "EHLO
        mail-ot1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726501AbgAOOjF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jan 2020 09:39:05 -0500
Received: by mail-ot1-f66.google.com with SMTP id 59so16255641otp.12
        for <devicetree@vger.kernel.org>; Wed, 15 Jan 2020 06:39:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=zVuLMr/lvKJoF5UPfuI+lUQAIQkXCUMqhXcAHAs8ml4=;
        b=FEnLtGiUkwDZxbYOPdNHll+HQl2Xo0RuD+nArol+3gMih9eH3ep483WYhxeGQP1DUb
         e4yLpBv4lzv3bt9wmR5S5vd0++1hKKg3aqI8P/cXXGqLAP0mmOoZ2PhvJf1y3bsxTT/F
         TJO3c3ASgec13wJUj9vIWDq/7gcoz3uBNpvVnfBrx8NMjrUPdtVOjOr5LH8m7EDrQxYC
         i9s2vVEs3cO5IUJ1xR8/jOfKaUuZROfQQMqdHmdun+9klB3CDFL790URh9nzdJ9GsTN6
         Ux97oRXMs0JukuOKcpvc0zbXub7ztHMDbOlUm2HlYW/U4LdqzwhunbNWNz14UZYw6enS
         d9/g==
X-Gm-Message-State: APjAAAWarWhH47h92kQLCNZrIJ+WUPCnoF1SobLg+wKq8yvVdzrc/i2m
        xL2g8W8CAgLde/UAAX+WerrOWz8=
X-Google-Smtp-Source: APXvYqwk9eO3AFZNo8EDVIXdx0kWskmYvN4oBPr6Qu+0XWkiqJzg7Zqg/gvoK9a+EMgiXvibSYFWwg==
X-Received: by 2002:a05:6830:1042:: with SMTP id b2mr2897560otp.306.1579099143397;
        Wed, 15 Jan 2020 06:39:03 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id x26sm762052oto.7.2020.01.15.06.39.01
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2020 06:39:02 -0800 (PST)
Received: from rob (uid 1000)
        (envelope-from rob@rob-hp-laptop)
        id 220379
        by rob-hp-laptop (DragonFly Mail Agent v0.11);
        Wed, 15 Jan 2020 08:39:01 -0600
Date:   Wed, 15 Jan 2020 08:39:01 -0600
From:   Rob Herring <robh@kernel.org>
To:     David Dai <daidavid1@codeaurora.org>
Cc:     georgi.djakov@linaro.org, bjorn.andersson@linaro.org,
        robh+dt@kernel.org, David Dai <daidavid1@codeaurora.org>,
        evgreen@google.com, sboyd@kernel.org, ilina@codeaurora.org,
        seansw@qti.qualcomm.com, elder@linaro.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH v2 1/6] dt-bindings: interconnect: Convert qcom,sdm845 to
 DT schema
Message-ID: <20200115143901.GA4664@bogus>
References: <1578630784-962-1-git-send-email-daidavid1@codeaurora.org>
 <1578630784-962-2-git-send-email-daidavid1@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1578630784-962-2-git-send-email-daidavid1@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu,  9 Jan 2020 20:32:59 -0800, David Dai wrote:
> Convert the qcom,sdm845 interconnect provider binding to DT schema.
> 
> Signed-off-by: David Dai <daidavid1@codeaurora.org>
> ---
>  .../bindings/interconnect/qcom,sdm845.txt          | 24 ------------
>  .../bindings/interconnect/qcom,sdm845.yaml         | 43 ++++++++++++++++++++++
>  2 files changed, 43 insertions(+), 24 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/interconnect/qcom,sdm845.txt
>  create mode 100644 Documentation/devicetree/bindings/interconnect/qcom,sdm845.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
