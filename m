Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 29C8B3256ED
	for <lists+devicetree@lfdr.de>; Thu, 25 Feb 2021 20:44:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234083AbhBYTnN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Feb 2021 14:43:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234212AbhBYTkz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Feb 2021 14:40:55 -0500
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A2C7C0617AA
        for <devicetree@vger.kernel.org>; Thu, 25 Feb 2021 11:40:14 -0800 (PST)
Received: by mail-pl1-x62d.google.com with SMTP id a24so3757454plm.11
        for <devicetree@vger.kernel.org>; Thu, 25 Feb 2021 11:40:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=/8zsvP8ZD+BzhQTmjNZb0GRylgsz/jgQq6EA/tPElnY=;
        b=RUC5y47WmZ1tKvWDlNLUAtJpvYi/UDF6WEs5EROUyFlt/3tcvu0kV6ZKn2aTL2HCPV
         YJN5SI5CsmmzTArWdqhWOWNy9KhTqslDZf6+y6wgbWqXWa2kczwbxTPKdD3+MPeY2QoF
         WA8ozU+TnARg98N8NEAGEOlsdEnoswe6iSf48=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=/8zsvP8ZD+BzhQTmjNZb0GRylgsz/jgQq6EA/tPElnY=;
        b=TTeNRrzSUbdeMgjWM0QsqUC51PIcaLBSxj9to0ok7rEaXojQsq2hPlSawQ9QpPFpwG
         CNMVBEadG0gNlw9csUqm4+1vhQZmo2u0bNolWuXFdVf4SuyJ4PeuqLyDBTxAB3QyX5KX
         Xdl+v1A3ndOjWHlT+9/mFDE9SzgddUfm+Mtz7hQ1Fr/bzKInYsNq+L2DzWfQLBwK2t3b
         gnohLfAnMya7/+n3t1/uZstMqCAuvIQEDFutIwBSje8rbn2eH0xUyI6hN2lonL+u9TKo
         +8Pi+r+OCyPEz41PvMMNrIPhfqZoLiEwD9NpSbGV7xRqgiCy7QqJPw6t5buHnvj22si3
         6daw==
X-Gm-Message-State: AOAM532GZ70SEB+TinzIJWPYww3Ej/w9JkYa8IL0mzdZk+dIE0+4jEuW
        u7DO8Yk+gw/2Y/qY+wziCruyNc+l7nbqWQ==
X-Google-Smtp-Source: ABdhPJzKWL7GRHfC72BT6EovBap9fnhgpyQnR2tFTo3OvPxgNVpUkOH4PGhFEKLAHVYzLkttV3wQdA==
X-Received: by 2002:a17:90a:ba16:: with SMTP id s22mr12230pjr.88.1614282013595;
        Thu, 25 Feb 2021 11:40:13 -0800 (PST)
Received: from chromium.org ([2620:15c:202:201:b942:93a8:e68d:5a90])
        by smtp.gmail.com with ESMTPSA id m12sm6396684pjk.47.2021.02.25.11.40.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Feb 2021 11:40:13 -0800 (PST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <d311b75428da7d87638208490fa9a64b5ef15d6f.1614244789.git.saiprakash.ranjan@codeaurora.org>
References: <cover.1614244789.git.saiprakash.ranjan@codeaurora.org> <d311b75428da7d87638208490fa9a64b5ef15d6f.1614244789.git.saiprakash.ranjan@codeaurora.org>
Subject: Re: [PATCH 7/9] soc: qcom: aoss: Add AOSS QMP support for SC7280
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Rajendra Nayak <rnayak@codeaurora.org>,
        Sibi Sankar <sibis@codeaurora.org>,
        Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Date:   Thu, 25 Feb 2021 11:40:11 -0800
Message-ID: <161428201178.1254594.5790623991406122509@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Sai Prakash Ranjan (2021-02-25 01:30:23)
> Add AOSS QMP support for SC7280 SoC.
>=20
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
