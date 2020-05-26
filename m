Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0C1551DAE01
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2020 10:51:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726224AbgETIvq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 May 2020 04:51:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726650AbgETIvq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 May 2020 04:51:46 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14074C05BD43
        for <devicetree@vger.kernel.org>; Wed, 20 May 2020 01:51:46 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id g12so1089048wrw.1
        for <devicetree@vger.kernel.org>; Wed, 20 May 2020 01:51:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=RfZdfcc2DeqiyN9D4GMHPVwfFuLz1SqPHKWyIxBlRQE=;
        b=N2PxVTmqc0PIilXf0tfgDq12qP6BuoYEi5jE083XOptOZ4MHgfU8BkVb4Grwgl4NIn
         fBU6HygqUt0Y7EayYWPUa2VQAXhsfWczsuBjBeatxRBzQqZ4c809mi0qNqhqXbfgz2cs
         6VkUVcngrKD1QpnKRDvaJyLXNS9LuPKXZsoKRGOPFkFO/fGiLaNKuvdP/ygjFmYfSi+W
         MPXTMQf5CjoEoYddICmiqJZRujH6+tgZCw/lQSvnA5ravJ9Xb/OJqU0cjm5bOqbn4ySD
         ytarfMarVW50RynUWKK0VjneG9HpAqs2QYT0NEXaq9tLXm+rrE68QzFKDAQdDnxD3+vN
         FMKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=RfZdfcc2DeqiyN9D4GMHPVwfFuLz1SqPHKWyIxBlRQE=;
        b=C3q+sK56/h14keLFwVVp8yR2c0gPa66htb6zFKd4YC6Fauis5qy8fpuz1DNOq6g3FU
         GHVd4Qyd3HN+kmqVrUwVz7IEl/sEt4cfRj+aibDi54rMMxAo9Njl3Oj1qnoY+aRnps0v
         5dk2NikNpklq7z04atob6LI1p2ZSjHLTIjM3EIAzUmEic/L6o17Kkf+rW8XK6Izoygjd
         EZFHTrZepmR+52OhGTwYCSMUqDzU+S78vr065wqc9Oo38axBy+KL1kAnU4WoHfg2L+b8
         tMzs7h3I36I0nTFTJEHqjwkJ6gT0GjI+A44fIU4lFTDJy8XcHHW3lv/NVwDd/mGI1rAO
         MALA==
X-Gm-Message-State: AOAM5300riXQBsquO5XgUE6E8xJLKxulpzfDBbUGfXJORBaWYQxz8yJA
        we36OQTaWn3nxNttxbp4CmPQMA==
X-Google-Smtp-Source: ABdhPJy7vTQHZlsjHOUjjA1fY46F7xY4npimGLDwSi4Dq1QjAtAOE3tBVQxTxOSuaD03VnTeasE/QA==
X-Received: by 2002:adf:ee87:: with SMTP id b7mr3292204wro.104.1589964704775;
        Wed, 20 May 2020 01:51:44 -0700 (PDT)
Received: from dell ([95.149.164.102])
        by smtp.gmail.com with ESMTPSA id l9sm984089wrv.32.2020.05.20.01.51.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2020 01:51:44 -0700 (PDT)
Date:   Wed, 20 May 2020 09:51:42 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Benjamin Gaignard <benjamin.gaignard@st.com>
Cc:     robh+dt@kernel.org, mark.rutland@arm.co, alexandre.torgue@st.com,
        linus.walleij@linaro.org, amelie.delaunay@st.com,
        devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org
Subject: Re: [PATCH v3] dt-bindings: mfd: Convert stmfx bindings to
 json-schema
Message-ID: <20200520085142.GD271301@dell>
References: <20200220162246.8334-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20200220162246.8334-1-benjamin.gaignard@st.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 20 Feb 2020, Benjamin Gaignard wrote:

> Convert stmfx bindings to json-schema
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
>  .../devicetree/bindings/mfd/st,stmfx.yaml          | 124 +++++++++++++++++++++
>  Documentation/devicetree/bindings/mfd/stmfx.txt    |  28 -----

>  .../devicetree/bindings/pinctrl/pinctrl-stmfx.txt  | 116 -------------------

Linus, anything from you?

>  3 files changed, 124 insertions(+), 144 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/mfd/st,stmfx.yaml
>  delete mode 100644 Documentation/devicetree/bindings/mfd/stmfx.txt
>  delete mode 100644 Documentation/devicetree/bindings/pinctrl/pinctrl-stmfx.txt

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
