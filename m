Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4157E33E572
	for <lists+devicetree@lfdr.de>; Wed, 17 Mar 2021 02:06:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231414AbhCQBEJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Mar 2021 21:04:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49406 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231838AbhCQBCt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Mar 2021 21:02:49 -0400
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com [IPv6:2607:f8b0:4864:20::1030])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C32AC061765
        for <devicetree@vger.kernel.org>; Tue, 16 Mar 2021 18:01:27 -0700 (PDT)
Received: by mail-pj1-x1030.google.com with SMTP id bt4so161079pjb.5
        for <devicetree@vger.kernel.org>; Tue, 16 Mar 2021 18:01:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=0/7cuBD31bRc94t826ZX3SA6XCbgb4AOvA5tVg9sOEM=;
        b=hVe7cSjsNHp/4Sab2cN5zNzsP+5IqhBK+Bc4zJ31VOXGrYOqfGHDh+tk5kjldIUNCd
         VBWzcYxYjTzsIBt9JnYO8BHHgMji4T4INhSTI/97P5WjRYVlNWdbSle9C/3mwY+XhPHs
         6iBcOtZqUwf5alK7EasWOQHwDE8u4lRucnP1g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=0/7cuBD31bRc94t826ZX3SA6XCbgb4AOvA5tVg9sOEM=;
        b=ac+x33J6PRb+/GW0KQIvGJL58lHGawbdOCbEP7yL6siMUHcGYgSQKSDDMRkCmpIrf4
         R/hyibjfQuQrlulTIrTYbHTOgiI3jzNWDWcOiYf6IbEJsfZ2wXtQyGAuBLRDXSmX1ZPD
         n2353fG+VE95Q8P5zf1MNMxdmVuXpsMjMnOyCZXgXh4rbqgYJLzoay+10astSu8W1DOn
         89redUkSbL7GUR+J461pwIQ4y1tdlR3m92wxHGDXxdjygxyaCfY62U1JyLte8IRVAzYq
         UAfTZ3t/ScYlTX34bY4u/w2lgDxBOMY5hXkXz7+J+1Qk1x/I3t1F5yU2hptUbHRWhGmq
         o2jA==
X-Gm-Message-State: AOAM532E5k/gwvsyZwOyLbZzb2YlRbyxKx3h0NIbliDgrNO+R0k6h5mQ
        QzOexw5eQyR92csQLsIDpGzksQ==
X-Google-Smtp-Source: ABdhPJzbShmzFjxCAEbPOYoMggij9YUMfH2fockl5MfmEFDe3bwEJ6NEQ3pxQoZrbU0vt4JSNb1g+A==
X-Received: by 2002:a17:903:20c1:b029:e6:8df3:f3ec with SMTP id i1-20020a17090320c1b02900e68df3f3ecmr2038291plb.60.1615942886722;
        Tue, 16 Mar 2021 18:01:26 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:201:e1e0:9aee:aecc:ef78])
        by smtp.gmail.com with ESMTPSA id w26sm17693110pfn.33.2021.03.16.18.01.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Mar 2021 18:01:26 -0700 (PDT)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210314061054.19451-3-srivasam@codeaurora.org>
References: <20210314061054.19451-1-srivasam@codeaurora.org> <20210314061054.19451-3-srivasam@codeaurora.org>
Subject: Re: [PATCH v7 2/2] arm64: dts: qcom: Add sound node for sc7180-trogdor-coachz
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     Srinivasa Rao Mandadapu <srivasam@codeaurora.org>
To:     Srinivasa Rao Mandadapu <srivasam@codeaurora.org>,
        agross@kernel.org, bjorn.andersson@linaro.org,
        devicetree@vger.kernel.org, dianders@chromium.org,
        judyhsiao@chromium.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, robh+dt@kernel.org,
        rohitkr@codeaurora.org, srinivas.kandagatla@linaro.org
Date:   Tue, 16 Mar 2021 18:01:24 -0700
Message-ID: <161594288488.1478170.9924299131220575265@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Srinivasa Rao Mandadapu (2021-03-13 22:10:54)
> This is a trgodor variant, required to have sound node variable
> for coachz specific platform.
>=20
> Signed-off-by: Srinivasa Rao Mandadapu <srivasam@codeaurora.org>
> Reviewed-by: Stephen Boyd <swboyd@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
