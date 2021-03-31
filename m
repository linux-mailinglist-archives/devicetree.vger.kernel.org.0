Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ED44B350605
	for <lists+devicetree@lfdr.de>; Wed, 31 Mar 2021 20:10:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234707AbhCaSKR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Mar 2021 14:10:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37094 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234806AbhCaSKE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Mar 2021 14:10:04 -0400
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E985C06174A
        for <devicetree@vger.kernel.org>; Wed, 31 Mar 2021 11:10:04 -0700 (PDT)
Received: by mail-pl1-x62d.google.com with SMTP id d8so8321961plh.11
        for <devicetree@vger.kernel.org>; Wed, 31 Mar 2021 11:10:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=CRwTprnnI8wz+/z7qaTV17ZDi+HLSj0ilkKWjBU02K8=;
        b=VPaEWj6gEDKV2/fVYPM6pBeCCmjH5CjUv8MDPhK+OFLA2zwsAWG/NkWeKzZStAo4GB
         ccHdr3pCFCCtk6TdaQnzqtjSEnGZ83/QUQk1H6coKIXXsbFng0x/EdaWPa5gzO2xAwbH
         ym9PALE98UahaphLi5qOR7TpbNea4i+jq5/Xg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=CRwTprnnI8wz+/z7qaTV17ZDi+HLSj0ilkKWjBU02K8=;
        b=V+gQt6/hQ+4VDJmB/oKTkF0z3Clui1ReBbGwhZzXfHC997IwgZ19lUFOZVAvWtMRUC
         5mr/OctEezxqyVBl/X/mZ+Z94Cz/yrR5N4iS7Z1IRTQKL+irvzzLYfiTvGvJGW7c9NP8
         X0nEQScHyWHBQMQqbqO30wIkNwzWuAQ8sWScCut3Pr2jUZFhc1w4jv6HagCLtl3oq3ek
         1q7hM5bO906xxAYCq/tvTeF0pborOBou8Lf3ouLHDtmK9YxEAcsYubW1ROxwhw4FDGQM
         5AL6A4DtK9WGS6ArSfvatrCipvq1EumNU107CqZcTNHrqAUkRJu/JWc6Eo0oq8NXdG6v
         lEjw==
X-Gm-Message-State: AOAM5331lq8lOyYu7nUWNxRslaq+BwAyHT9v/6+Jwu97CGiS/QPj5mU1
        3SpZbD+XR1Khcoi9mz8nCM1BsQ==
X-Google-Smtp-Source: ABdhPJwbAA32TMbB3osF08sK5TFLMQEjnc+42H9avoEUrbO+Zx4wBht1hAmZNc5xM2IMK/M2zLeYyA==
X-Received: by 2002:a17:902:c643:b029:e7:3c10:4695 with SMTP id s3-20020a170902c643b02900e73c104695mr4370404pls.41.1617214204060;
        Wed, 31 Mar 2021 11:10:04 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:74b3:8070:8b1:c494])
        by smtp.gmail.com with UTF8SMTPSA id i22sm3214254pgj.90.2021.03.31.11.10.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Mar 2021 11:10:03 -0700 (PDT)
Date:   Wed, 31 Mar 2021 11:10:00 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     satya priya <skakit@codeaurora.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, rnayak@codeaurora.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, kgunda@codeaurora.org
Subject: Re: [PATCH V3 2/5] regulator: qcom-rpmh: Add PM7325/PMR735A
 regulator support
Message-ID: <YGS6+OtDJe4E+jTi@google.com>
References: <1617192339-3760-1-git-send-email-skakit@codeaurora.org>
 <1617192339-3760-3-git-send-email-skakit@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1617192339-3760-3-git-send-email-skakit@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Mar 31, 2021 at 05:35:36PM +0530, satya priya wrote:
> Add support for PM7325/PMR735A regulators. This ensures
> that consumers are able to modify the physical state of PMIC
> regulators.
> 
> Signed-off-by: satya priya <skakit@codeaurora.org>

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
