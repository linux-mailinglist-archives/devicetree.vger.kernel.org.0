Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0485F365E4E
	for <lists+devicetree@lfdr.de>; Tue, 20 Apr 2021 19:16:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233281AbhDTRQg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Apr 2021 13:16:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233225AbhDTRQg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Apr 2021 13:16:36 -0400
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2683C06138A
        for <devicetree@vger.kernel.org>; Tue, 20 Apr 2021 10:16:04 -0700 (PDT)
Received: by mail-pl1-x635.google.com with SMTP id s20so4192853plr.13
        for <devicetree@vger.kernel.org>; Tue, 20 Apr 2021 10:16:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=irTmuEe2pRr0Rl3uOVQJ+XhzXrvVBN56ZxLdfK0T+Z8=;
        b=SCqmMaRSS1gGfkcJyngj89CG845AhRXkGK2F88BZk5KT1u/+c8BoliHPu42RtXIaml
         8iugl8CuYxLqemFK5aOFf5DZYEjC+eiO5TfkbqxtZxDATPZ+aYB+W14vHXDVKGgQE/P7
         wXRpK+/sPm8NdC1J6Hd0yPwtPFDMMpRQnxGFw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=irTmuEe2pRr0Rl3uOVQJ+XhzXrvVBN56ZxLdfK0T+Z8=;
        b=Oj9rlrvQI6VQFhay6ZF+gd+c8Ij/k6ZwEGBhLqK+sPfxXxoADjQcW+CDxsJxL+nR1s
         01oyTIldhL3GJPc/szeF5T12jpEC0e12sOVqRl+zsHJN2rkUebpMlZfUuc+aBcQlEleN
         68NBRf6huFtv3KSpxZLVk5B9sUKazsWvQmPt0yNDOa19952+QjVv9f0N1OOvbuvl4wkj
         T5cYHBXObUB3gg72ZaSuvcGRonxPItu4/vNr8uEoyPQiZRvSa18hHOECNLpxjeBGQdfH
         dYYblUaHCZ7JkDHB6e8J15IlGVhLRkwjbONAoA01YXuiHKScPEaURTIf3ykpDQ5pSZKk
         uAYw==
X-Gm-Message-State: AOAM531OjT0IlWwz5buXRoQtRROdaBy8er1p30Hi/zW0gSRzJi1jMlrm
        IaqHMLjLCQWmM9sbx7RJuRaiOA==
X-Google-Smtp-Source: ABdhPJzFEFl6Idin15/xKtXbEuWZIi6Nr1FUejohVJutVMscIDnw3HwfW6EcMFACHdsyzlselUTI3Q==
X-Received: by 2002:a17:90b:3646:: with SMTP id nh6mr6049573pjb.119.1618938964244;
        Tue, 20 Apr 2021 10:16:04 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:7a9:7e56:e9c3:13e8])
        by smtp.gmail.com with UTF8SMTPSA id a4sm10234479pff.140.2021.04.20.10.16.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Apr 2021 10:16:03 -0700 (PDT)
Date:   Tue, 20 Apr 2021 10:16:02 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     satya priya <skakit@codeaurora.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, kgunda@codeaurora.org
Subject: Re: [RESEND PATCH V3 3/5] arm64: dts: qcom: pmr735a: Add temp-alarm
 support
Message-ID: <YH8MUkYJdZbkuXt/@google.com>
References: <1618398783-7834-1-git-send-email-skakit@codeaurora.org>
 <1618398783-7834-4-git-send-email-skakit@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1618398783-7834-4-git-send-email-skakit@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Apr 14, 2021 at 04:43:01PM +0530, satya priya wrote:
> Add temp-alarm node for PMR735A pmic and also modify gpio
> node to add gpio ranges and "qcom,spmi-gpio" compatible.
> 
> Signed-off-by: satya priya <skakit@codeaurora.org>

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
