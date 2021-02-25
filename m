Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9BDF03256E2
	for <lists+devicetree@lfdr.de>; Thu, 25 Feb 2021 20:42:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234465AbhBYTlk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Feb 2021 14:41:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35488 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234934AbhBYTjh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Feb 2021 14:39:37 -0500
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com [IPv6:2607:f8b0:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CAF7DC0617A7
        for <devicetree@vger.kernel.org>; Thu, 25 Feb 2021 11:38:56 -0800 (PST)
Received: by mail-pg1-x532.google.com with SMTP id l2so4505573pgb.1
        for <devicetree@vger.kernel.org>; Thu, 25 Feb 2021 11:38:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=Udx9won9fgTSlWpviBuhsdiRqCM0dTOKYJFuahe8Z0w=;
        b=kOfEM1MK1D0ne0V+iPF2AVnyMSgUf/aI5Mm7WFhCDtm6KqVhb/vGIrTRipyPUE4H9N
         0JvBLiYVwjaWxfVwixAf7tT3YeM6u4E2SL2iawCUBBKu3ptyWfpMwWPYF0zBxqAQ8Pgz
         MMOlMSq1GVz5x60La/pj6QptK4uqu84n73hE0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=Udx9won9fgTSlWpviBuhsdiRqCM0dTOKYJFuahe8Z0w=;
        b=oRnKcvDLlESnU3hP7ABw8eFI2I42/UBYhasfDuqbCQOIN61IBhAqvGQlpCJ5KGaELd
         fh0juQlosidqIB+vCACq/sYCRki6Dqy4hB9s5KMiF7RDoNI0T3YfhwEuFo+6YCSUJULj
         h4I3EYfVu2nyiHXWu0XUpLZ1MpO+w7yUXhe/XQ2kZa5kXy76HgTWgd7dnMWXVlT9acdI
         ++pwPa5L8KEL5vjQvmRgs1+pY2V4K494yByDWPVgJnFj5CnQb1+pIr7pf9w57XPSHhMg
         0g49gXfM7utLL6KTAdPh3Ii+jAv0IkuEymhsYzHL3D10kjI8w0SWrsBbf+I8x8GpZCr/
         wL9Q==
X-Gm-Message-State: AOAM532iV03mOcMcBDxX3yqB/3WdG7+mNeq+MStaeZ3eEcczOmB7lCPJ
        xioCPpE/jbhalk2+4bif5okTvqQK2QsWIA==
X-Google-Smtp-Source: ABdhPJwbTUGo8Y/wFJ4LlcL6Eqnbm5iXQkgWcKg430hMxmV8LARcaZXVf9whOyNFkQXBc9rXmYwn/Q==
X-Received: by 2002:a63:fa4c:: with SMTP id g12mr4347191pgk.205.1614281936227;
        Thu, 25 Feb 2021 11:38:56 -0800 (PST)
Received: from chromium.org ([2620:15c:202:201:b942:93a8:e68d:5a90])
        by smtp.gmail.com with ESMTPSA id h20sm6808278pfv.164.2021.02.25.11.38.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Feb 2021 11:38:55 -0800 (PST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <2e51420bf293e6e82a056a743e5a95f2cc70104c.1614244789.git.saiprakash.ranjan@codeaurora.org>
References: <cover.1614244789.git.saiprakash.ranjan@codeaurora.org> <2e51420bf293e6e82a056a743e5a95f2cc70104c.1614244789.git.saiprakash.ranjan@codeaurora.org>
Subject: Re: [PATCH 5/9] arm64: dts: qcom: sc7280: Add IPCC for SC7280 SoC
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Rajendra Nayak <rnayak@codeaurora.org>,
        Sibi Sankar <sibis@codeaurora.org>,
        Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Date:   Thu, 25 Feb 2021 11:38:53 -0800
Message-ID: <161428193315.1254594.1964886483179735748@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Sai Prakash Ranjan (2021-02-25 01:30:21)
> Add the IPCC DT node which is used to send and receive IPC
> signals with remoteprocs for SC7280 SoC.
>=20
> Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
