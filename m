Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EB46271AAB
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2019 16:45:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390707AbfGWOpT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Jul 2019 10:45:19 -0400
Received: from mail-pf1-f196.google.com ([209.85.210.196]:46954 "EHLO
        mail-pf1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388172AbfGWOpT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Jul 2019 10:45:19 -0400
Received: by mail-pf1-f196.google.com with SMTP id c73so19254766pfb.13
        for <devicetree@vger.kernel.org>; Tue, 23 Jul 2019 07:45:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=message-id:mime-version:content-transfer-encoding:in-reply-to
         :references:subject:to:cc:from:user-agent:date;
        bh=7YnBSVvlh+RCnM6IZNv0+Q87Dux4OO9ol8dRHcOWC60=;
        b=Egjg8ecg4MJEW+UwWlnkEOGqbJLlAv2REIYQenCtCVdCXNdjaIqMCK/VFfuLi94TEU
         bLhvsb5hIdCahut/FS9Bhacah5uyRvGz6WuB0/wKVrlc7jLe2gRtaw2H+QrfK5hPok0X
         uYWiBzYuJFceIO8Pp7vnPWud5a6saCzIUc+bw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:mime-version
         :content-transfer-encoding:in-reply-to:references:subject:to:cc:from
         :user-agent:date;
        bh=7YnBSVvlh+RCnM6IZNv0+Q87Dux4OO9ol8dRHcOWC60=;
        b=J8ROmdxaMsG4f56XBFIXmJy8ivaJnUW1tz5wduMvodi546pvRqCPsFdGVpXNIxeIjr
         UFdOvoYp5WsK5x6knmbx3sa7vB/jKFiXwAGNwKN4iaZmZ8q32cNlk5+zzRlv0+ftKOWT
         wf5Mrgo2qRY1oMnt3N3q4HYIQgxCDyf/ycxdyc8qL4x0J4YFaZ8gVmcxxOk5pSPadLUP
         pNzA7FWwUqSd0m8y6gxGjDG2RTOdFvbNna6tORuwcWYGCEtxpFmbuWt3BPbmMZLB2jw9
         QG7bQ+l2kgCEi4CUs6SL6Mu4U0Rcx4sMQh4ErfMRQvCh88jVRNNyo3EqKyxf/n1zjYNg
         hMkA==
X-Gm-Message-State: APjAAAWg3X6g//svbqdPKUuQOmLumwr9AQ3dBe0ygiV+SVvITmolcgGK
        4+KpYAYGHhlIedWq4TKAcUGP/g==
X-Google-Smtp-Source: APXvYqxVzuR+tqiRGt2xIUK6sQfvU8WFug6sR5L+QtBOMxaXOfBU3xsg6oVaJewt/Ape2FFfq++ZAQ==
X-Received: by 2002:aa7:9217:: with SMTP id 23mr6237390pfo.239.1563893118612;
        Tue, 23 Jul 2019 07:45:18 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id d2sm37940880pgo.0.2019.07.23.07.45.17
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 23 Jul 2019 07:45:18 -0700 (PDT)
Message-ID: <5d371d7e.1c69fb81.75d9c.87e4@mx.google.com>
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20190722123422.4571-3-vkoul@kernel.org>
References: <20190722123422.4571-1-vkoul@kernel.org> <20190722123422.4571-3-vkoul@kernel.org>
Subject: Re: [PATCH 2/5] arm64: dts: qcom: sdm845: remove unnecessary properties for dsi nodes
To:     Andy Gross <agross@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.8.1
Date:   Tue, 23 Jul 2019 07:45:17 -0700
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Vinod Koul (2019-07-22 05:34:19)
> We get a warning about unnecessary properties of
>=20
> arch/arm64/boot/dts/qcom/sdm845.dtsi:2211.22-2257.6: Warning (avoid_unnec=
essary_addr_size): /soc/mdss@ae00000/dsi@ae94000: unnecessary #address-cell=
s/#size-cells without "ranges" or child "reg" property
> arch/arm64/boot/dts/qcom/sdm845.dtsi:2278.22-2324.6: Warning (avoid_unnec=
essary_addr_size): /soc/mdss@ae00000/dsi@ae96000: unnecessary #address-cell=
s/#size-cells without "ranges" or child "reg" property
>=20
> So, remove these properties
>=20
> Signed-off-by: Vinod Koul <vkoul@kernel.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

