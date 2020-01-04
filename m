Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2F20912FF97
	for <lists+devicetree@lfdr.de>; Sat,  4 Jan 2020 01:33:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726697AbgADAdW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Jan 2020 19:33:22 -0500
Received: from mail-il1-f194.google.com ([209.85.166.194]:35301 "EHLO
        mail-il1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726229AbgADAdW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Jan 2020 19:33:22 -0500
Received: by mail-il1-f194.google.com with SMTP id g12so38041859ild.2
        for <devicetree@vger.kernel.org>; Fri, 03 Jan 2020 16:33:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=k8CKT1is0EUxteWZfaLzNNpxRWfsUWmMNgxluVtAzcQ=;
        b=Xr+QZh+uTq5hSUvPwTGeoArDPuJd5I0zgbQcC76Ia/fYNQxMMhxll0OrFd/8h5dzgX
         3Y8p3fs7NDTslapOOHgwJjhNlfP66Uwd9jWTcHCnlp2W4m6MK1VvJryqg0nNoyvmcQ2r
         8VVEwFR8vf0HlHcPwskdJzwl7asOXx0BWiGUX+abOSsxRInbXfJoXLXxJ/U8XcgNkfXs
         pp95Y7Jh80jYCxr1sVgOaQv1HMXnPGqF01m26NhqnpMPtqrei9eM7gjMyP2Zoqu2UkP4
         Yh4LwEE8//u85jNEqXVpBG/X9jIt/mMo2qQuASuZ4I+ZVVMSqj+WLsRwFxQ/12eT+MYr
         hfiw==
X-Gm-Message-State: APjAAAUorSV4m3vKRHxaNBR+VPJE8l4z7YhfXfZDZYd6x/0+T1JQfvTt
        yZVhCCed7C2LN6qAOODRVrinzgM=
X-Google-Smtp-Source: APXvYqy88+ic50I9pIm8Arz+hymVtONVNKERmucUREuzCvAn9pOQRDMkbjc0JqxdlbrR01VUpg1VrQ==
X-Received: by 2002:a92:5d5d:: with SMTP id r90mr69949140ilb.284.1578098000864;
        Fri, 03 Jan 2020 16:33:20 -0800 (PST)
Received: from rob-hp-laptop ([64.188.179.251])
        by smtp.gmail.com with ESMTPSA id g6sm21644427ilj.64.2020.01.03.16.33.19
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jan 2020 16:33:20 -0800 (PST)
Received: from rob (uid 1000)
        (envelope-from rob@rob-hp-laptop)
        id 2219ec
        by rob-hp-laptop (DragonFly Mail Agent v0.11);
        Fri, 03 Jan 2020 17:33:18 -0700
Date:   Fri, 3 Jan 2020 17:33:18 -0700
From:   Rob Herring <robh@kernel.org>
To:     Taniya Das <tdas@codeaurora.org>
Cc:     Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette =?iso-8859-1?Q?=A0?= 
        <mturquette@baylibre.com>, David Brown <david.brown@linaro.org>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, linux-soc@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
        Andy Gross <agross@kernel.org>, devicetree@vger.kernel.org,
        robh@kernel.org, robh+dt@kernel.org,
        Taniya Das <tdas@codeaurora.org>
Subject: Re: [PATCH v3 1/6] dt-bindings: clock: Add YAML schemas for the QCOM
 GPUCC clock bindings
Message-ID: <20200104003318.GA5129@bogus>
References: <1577428714-17766-1-git-send-email-tdas@codeaurora.org>
 <1577428714-17766-2-git-send-email-tdas@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1577428714-17766-2-git-send-email-tdas@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 27 Dec 2019 12:08:29 +0530, Taniya Das wrote:
> The GPUCC clock provider have a bunch of generic properties that
> are needed in a device tree. Add a YAML schemas for those.
> 
> Signed-off-by: Taniya Das <tdas@codeaurora.org>
> ---
>  .../devicetree/bindings/clock/qcom,gpucc.txt       | 24 --------
>  .../devicetree/bindings/clock/qcom,gpucc.yaml      | 71 ++++++++++++++++++++++
>  2 files changed, 71 insertions(+), 24 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/clock/qcom,gpucc.txt
>  create mode 100644 Documentation/devicetree/bindings/clock/qcom,gpucc.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
