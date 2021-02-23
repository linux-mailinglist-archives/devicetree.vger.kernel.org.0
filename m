Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 89E0D322678
	for <lists+devicetree@lfdr.de>; Tue, 23 Feb 2021 08:40:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231812AbhBWHjZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Feb 2021 02:39:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54064 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231753AbhBWHjM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Feb 2021 02:39:12 -0500
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com [IPv6:2607:f8b0:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C8E9C061786
        for <devicetree@vger.kernel.org>; Mon, 22 Feb 2021 23:38:32 -0800 (PST)
Received: by mail-pg1-x52e.google.com with SMTP id t11so11849417pgu.8
        for <devicetree@vger.kernel.org>; Mon, 22 Feb 2021 23:38:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=Uq7G+VtpoQoqq71TCIjSx9Y9sX/Ug87Got6NSD0YuxI=;
        b=LzwLVnx8KjWDAsLm4xqzxKT3Poi8GdKTRa8S+7YQDV5NNCntisjIVrgX6BgeAwYOvB
         5sm/YEGemxySQ7cyoLtaQ5DrH1ZccFbgA5PfIVT25r4t/xwlmnlW3oDpuemuESHguTaE
         63nqwq4qbmRFrDpvuR39eGD8vFVZknZGt3IEg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=Uq7G+VtpoQoqq71TCIjSx9Y9sX/Ug87Got6NSD0YuxI=;
        b=UfTUfm91PufFcflFAoRgJGGaWxEqVzkoZHWkjdrbs2TYmZhO9+IS1ApJCKj6SvQ88M
         VkZq2ZK7JJ9utBm7G0zkx7WX+9gNCOU2z+32Wljq6VHY1fxswSW3WWV+BuFQC/2KsCQz
         LAdv+BNhHD09E/eHBz+riBvKZEJ84p//Pbre4pM/CygKXfiE9YKPse5YBj52mNbWgM5i
         Zq40dycp0QqqdWOEGtL6YixRsqo+orZ+G7LoLAk0/LmaiRNb+wPN0fK+M20RCazZxPYp
         uSf1uVIRMcGfh6bIOzoEaPnTH7a/voD5fgasqzoVYFI+MDlhL0elvjYmelZTLXyLPLoR
         s6CA==
X-Gm-Message-State: AOAM530RYZ/9XR/At6x0MqkCQg4Y1vVV2J0k3g9jD5JwzmPlo7W62hI9
        YTsueAIRkSR71LuUJhGzKQY8aQ==
X-Google-Smtp-Source: ABdhPJwLqtN8OE/Z3RkI+XzDBNdrUeDNeIBS+X4//zAsKSvkh8WqXsnQw460Q50eoopo+QLxJYvdhg==
X-Received: by 2002:a63:181e:: with SMTP id y30mr22526423pgl.324.1614065911870;
        Mon, 22 Feb 2021 23:38:31 -0800 (PST)
Received: from chromium.org ([2620:15c:202:201:68e6:d68b:3887:f216])
        by smtp.gmail.com with ESMTPSA id e15sm9520691pfl.59.2021.02.22.23.38.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Feb 2021 23:38:31 -0800 (PST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <1613114930-1661-5-git-send-email-rnayak@codeaurora.org>
References: <1613114930-1661-1-git-send-email-rnayak@codeaurora.org> <1613114930-1661-5-git-send-email-rnayak@codeaurora.org>
Subject: Re: [PATCH 04/13] dt-bindings: qcom,pdc: Add compatible for sc7280
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Rajendra Nayak <rnayak@codeaurora.org>
To:     Rajendra Nayak <rnayak@codeaurora.org>, agross@kernel.org,
        bjorn.andersson@linaro.org, robh+dt@kernel.org
Date:   Mon, 22 Feb 2021 23:38:30 -0800
Message-ID: <161406591008.1254594.15135311472143997847@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Rajendra Nayak (2021-02-11 23:28:41)
> Add the compatible string for sc7180 SoC from Qualcomm
>=20
> Signed-off-by: Rajendra Nayak <rnayak@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
