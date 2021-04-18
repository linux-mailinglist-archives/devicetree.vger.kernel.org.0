Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 902EC363307
	for <lists+devicetree@lfdr.de>; Sun, 18 Apr 2021 03:56:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237154AbhDRB4K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Apr 2021 21:56:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237156AbhDRB4J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Apr 2021 21:56:09 -0400
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F376CC061761
        for <devicetree@vger.kernel.org>; Sat, 17 Apr 2021 18:55:41 -0700 (PDT)
Received: by mail-pl1-x62e.google.com with SMTP id o16so2307377plg.5
        for <devicetree@vger.kernel.org>; Sat, 17 Apr 2021 18:55:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=rTkjJTulG+ppsNDe/JVemSnD0G0lniH+huBXipnFnPU=;
        b=M0EX3nCTbthJnNOFP1+7/mW8tkxoj1NiaW5J79Z7MUvjIZvd3NdA3ABP5o5DBbVwAu
         KcFpoy61B3x/tTqi+bhwTt4Gs63vO5VdWVpjOAC9MATbrK2zDYVeHhlvX0F42hF5S1xB
         vhpglVh0pm+kInzFg8yBOQBo5KPiQlRx3pqGc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=rTkjJTulG+ppsNDe/JVemSnD0G0lniH+huBXipnFnPU=;
        b=gCUV9BVx7mGiXQJWr2KZ9Euz2A77MQ/VIBKXcxjLMfZD3/Cw/KLE4+KAJhufdwyjiS
         63NPtOV80hredkhi9vePiunQlBcVRREtmoN7mo132qEHo6vciyq+KCRraDR15q1DPH3C
         bYOmM2aLfKb8fFiZydAIFa+rzFoYHgoO9DDs88KbN6HNtmok0MHKN90SdAz5C+sFgFQO
         6+gyfA8N4HeYrv3FUxNqGlTNmJToThSd/XFaMWfbJIgr4UyUv82vf1qq1xbiW4mdJglT
         VwmNpis3f5AOVlTvKJAsIbo4fY4uPeJP3gEsdEMueo1A6ZwYA96EHOtxnkyMULUA14Wn
         +xLA==
X-Gm-Message-State: AOAM532OwyP9+6DQ0ORadTLaVOgPt2LSaycy+kiX2QvrcIv0yKC0vin9
        SKo9hlEf+sIBmFdIWP5braOc0w==
X-Google-Smtp-Source: ABdhPJwBZDMwGUmMc7vpVHh+Bx25dcFwEDnpourJ8L102VyxWqgwO2Ha+ec0r083CRWhUGrvAyu9jA==
X-Received: by 2002:a17:90b:1193:: with SMTP id gk19mr17440666pjb.143.1618710941533;
        Sat, 17 Apr 2021 18:55:41 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:201:e47c:5232:82d9:6d3f])
        by smtp.gmail.com with ESMTPSA id g23sm5344346pfu.142.2021.04.17.18.55.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Apr 2021 18:55:41 -0700 (PDT)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <1618574638-5117-5-git-send-email-sibis@codeaurora.org>
References: <1618574638-5117-1-git-send-email-sibis@codeaurora.org> <1618574638-5117-5-git-send-email-sibis@codeaurora.org>
Subject: Re: [PATCH 04/12] dt-bindings: remoteproc: qcom: Add QMP bindings
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     rjw@rjwysocki.net, agross@kernel.org, ohad@wizery.com,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dianders@chromium.org, rishabhb@codeaurora.org,
        sidgup@codeaurora.org, Sibi Sankar <sibis@codeaurora.org>
To:     Sibi Sankar <sibis@codeaurora.org>, bjorn.andersson@linaro.org,
        mathieu.poirier@linaro.org, robh+dt@kernel.org,
        ulf.hansson@linaro.org
Date:   Sat, 17 Apr 2021 18:55:39 -0700
Message-ID: <161871093917.46595.9385345299825618188@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Sibi Sankar (2021-04-16 05:03:50)
> Add Qualcomm Mailbox Protocol (QMP) binding to replace the power domains
> exposed by the AOSS QMP node.
>=20
> Signed-off-by: Sibi Sankar <sibis@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
