Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B7425365C5B
	for <lists+devicetree@lfdr.de>; Tue, 20 Apr 2021 17:41:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232303AbhDTPlw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Apr 2021 11:41:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39152 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232837AbhDTPlu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Apr 2021 11:41:50 -0400
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6EFB0C06138A
        for <devicetree@vger.kernel.org>; Tue, 20 Apr 2021 08:41:17 -0700 (PDT)
Received: by mail-pl1-x62b.google.com with SMTP id n10so8740220plc.0
        for <devicetree@vger.kernel.org>; Tue, 20 Apr 2021 08:41:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=RftfUOzx6cuYVUbwyHqCRiPh7HztqAU4DiiO5zyA3ug=;
        b=fsVuqnPUMW3p/omuF7n1o4se+xOnZjrzVPiRse/XOC7wqPl2IbqcuN+ck/bjnmuuMz
         yksubT3cxv+iKgqnJk7WilF5ckB52ofvx7nRgJlokICnawZH83nVUJ42GqSJ2XWAKCSU
         VjImonYgA4W9Ecy29FUhtSqAWu5wFdtMsP+q8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=RftfUOzx6cuYVUbwyHqCRiPh7HztqAU4DiiO5zyA3ug=;
        b=j4bMxCO8kgkxokVaYzQZKr2XOIkpSYBpG+CF/pdigHAKmh9H5v7QWB0PSwKOTrHReU
         1vJKtvFsV6cUVFil2N2SxhL8RrvXnlP9pRwkSzsDwGgqD+m6kcIyDMur+J5wGmwEOTIU
         z6sVYFwJLdMTybNLdhXClzaf8y5n9LDsjSN2EgI/szhp1B37S/DYO+gF4WoG8Cx2OT92
         EYF68WNjx/hcTwXQXJld1KFVUqYNTLNW+ND5k99W5JRa29gLrzPWchb64KMAk0F0Ot5J
         QsyGhyIgh5r3TCm7cbMQLpKaX1Ht2lO9jnr/TdSx4EGwadmN0VQ/+IxnXyLJO582xpBY
         RuNw==
X-Gm-Message-State: AOAM530Yug0DYsuNtricGdFht2BoNuGasGaLDzKR1XKMUd95AR9vjGi6
        dPQtcIZMLgN9mvvrxgtM1Qw/vg==
X-Google-Smtp-Source: ABdhPJyWJPfsuWZo7IEr8dHnuW0/nVwSsCN/bl7cQL44qRDfQmhRVvVzLKpaT1eUJ/ohOgU3tpWf8A==
X-Received: by 2002:a17:90a:cb85:: with SMTP id a5mr5831006pju.124.1618933277027;
        Tue, 20 Apr 2021 08:41:17 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:7a9:7e56:e9c3:13e8])
        by smtp.gmail.com with UTF8SMTPSA id w6sm2544287pfj.85.2021.04.20.08.41.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Apr 2021 08:41:16 -0700 (PDT)
Date:   Tue, 20 Apr 2021 08:41:15 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     satya priya <skakit@codeaurora.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, kgunda@codeaurora.org
Subject: Re: [PATCH V3 1/5] arm64: dts: qcom: pm7325: Add pm7325 base dts file
Message-ID: <YH72G/Jj7LunQzLu@google.com>
References: <1618389266-5990-1-git-send-email-skakit@codeaurora.org>
 <1618389266-5990-2-git-send-email-skakit@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1618389266-5990-2-git-send-email-skakit@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Apr 14, 2021 at 02:04:22PM +0530, satya priya wrote:
> Add base DTS file for pm7325 along with GPIOs and temp-alarm nodes.
> 
> Signed-off-by: satya priya <skakit@codeaurora.org>

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
