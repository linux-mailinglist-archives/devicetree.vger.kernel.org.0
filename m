Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3B2F63EAADD
	for <lists+devicetree@lfdr.de>; Thu, 12 Aug 2021 21:22:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233818AbhHLTXH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Aug 2021 15:23:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233436AbhHLTXH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Aug 2021 15:23:07 -0400
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BEE1C0617A8
        for <devicetree@vger.kernel.org>; Thu, 12 Aug 2021 12:22:41 -0700 (PDT)
Received: by mail-pl1-x633.google.com with SMTP id a20so8649125plm.0
        for <devicetree@vger.kernel.org>; Thu, 12 Aug 2021 12:22:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=Qb+FI0jSCsZyHH1Ia4kbzXwLXCw4sowjg/unRazGFOw=;
        b=j8cQMpokfQuLRgHm07RR5lcnPohAYewhPt1EspVbwh4WNHr7GGQvDm3kmECAFwxwW8
         jhbPlSAsren8SdoC+d8S8uO8TfchuQSUWI0bK9y+pjIJBSt5nSr77a9k+j+Tq1b1NGAS
         tTE9TMfvEPFduwrbXRQDM01A2S6J85S2QCkPs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Qb+FI0jSCsZyHH1Ia4kbzXwLXCw4sowjg/unRazGFOw=;
        b=IY5eb6+8oVEuvLP4YWlaEIX/cQgMSj1BItTf7ePyjXJSH/w0q/jATZZpHcnz45b71+
         Znq7kiL4Z1ppmHkSkFXDRI9NvI23Gq6S+TLzAebXcT9+cD0WzmIpdYqtwHDuvJotfz8s
         lrY5HCdwtSetGwYRGPKuUwW0pVmlFA9MvcRHR3FTl2PlGLaOKDbnUaSCRdd/mmYmEEDn
         EmA6hXIuY2i9ITTps20O13xuh/q68VO9RdRIv3L2K2b3UX58udKnrYpZhdXxHXFgHUiK
         6Y+Z9KRTE8kiMhgkAdX6NQznv5pI1+WbECGiWqMhayhT9lBs3znyv1GoK0dUalGCsqLb
         minQ==
X-Gm-Message-State: AOAM530SIwUf1LYeE4PzPLuZxZ0LO8i8Xh6+ewBGfvIIootNCFleX4Fm
        hGXPqryJZoeY3uD3E40EpSuLlA==
X-Google-Smtp-Source: ABdhPJwPH80t5d7F/jYCYlTC6qaJ9oXn39f+IjkD6biu7WuSZq9ZoVowWfDG6IADtOsKsh6cCUYT5A==
X-Received: by 2002:a05:6a00:1c71:b029:3e0:4537:a1d4 with SMTP id s49-20020a056a001c71b02903e04537a1d4mr5590743pfw.1.1628796161176;
        Thu, 12 Aug 2021 12:22:41 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:6683:43e5:ba4c:d76c])
        by smtp.gmail.com with UTF8SMTPSA id j22sm4434963pgb.62.2021.08.12.12.22.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Aug 2021 12:22:40 -0700 (PDT)
Date:   Thu, 12 Aug 2021 12:22:39 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Rajesh Patil <rajpat@codeaurora.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, swboyd@chromium.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, rnayak@codeaurora.org,
        saiprakash.ranjan@codeaurora.org, msavaliy@qti.qualcomm.com,
        skakit@codeaurora.org
Subject: Re: [PATCH V5 6/7] arm64: dts: sc7280: Configure uart7 to support
 bluetooth on sc7280-idp
Message-ID: <YRV0/8qtlMyVSDRI@google.com>
References: <1628754078-29779-1-git-send-email-rajpat@codeaurora.org>
 <1628754078-29779-7-git-send-email-rajpat@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1628754078-29779-7-git-send-email-rajpat@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 12, 2021 at 01:11:17PM +0530, Rajesh Patil wrote:
> Add bluetooth uart pin configuration for sc7280-idp.
> 
> Signed-off-by: Rajesh Patil <rajpat@codeaurora.org>

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
