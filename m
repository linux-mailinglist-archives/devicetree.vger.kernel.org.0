Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B45A879E47F
	for <lists+devicetree@lfdr.de>; Wed, 13 Sep 2023 12:04:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234107AbjIMKED (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Sep 2023 06:04:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34396 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231367AbjIMKEC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Sep 2023 06:04:02 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A17B919A9
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 03:03:58 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-9ad810be221so244614466b.2
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 03:03:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694599437; x=1695204237; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yLAQ3xSyHcqOfoBP/xtKa9Z87ZAYx/dOKEVwQ/GtggQ=;
        b=m572+yu8hg6ZM8SUnyXh/JkdYy2/U2fzfnQltTG/bcRmkQfEKHO76r/xmIxBRnGznz
         l8mE16y3gcBdQQpt57icouKpD4hnpS20alCelHd62mT2NtZqcEopkjaj/4zOVKg0xubH
         9b/rufcxBP5GbPhtv8xyyEDDeBofZdmi94mR+HrP58/KSX3tLnCwo+NMArciyTduEPSX
         TXQcGWNGv0spLWR7rEEJjSLJ46zpLA5xvtNZ3FNuRDGHQD6wW3lDsnivaXyklGx66UNs
         ex/+vmo+vhNNtvRdnwpZExdHefYIuaaKqmuNEb58QSFDSl0Er86b633nXUyI+SRcB03W
         PVYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694599437; x=1695204237;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yLAQ3xSyHcqOfoBP/xtKa9Z87ZAYx/dOKEVwQ/GtggQ=;
        b=V7J1aP17Y7+q6iXC3CuLn5gDDWHqXAi9HS9eJGzuatbRGhohHqgKLWnHeXEbjljQpz
         3SXtxgnviqGH73uQXVCQ3bwxy63vbg6i/yh7lkf6v4QhHrrYE605oR9UsaskzR6OPRfM
         ibzpsAJO6ko50vdHAM2TCsGCuPRjHSWU9B3SLJWanI8xvdDYhwMy+OoAcuxHBdGOdchg
         oWsovLDdRAUH2IW33CXDlIvkhD7Cq02tRSB5bG7LWQ6Lauq27a6v6n57B7NM5NE1fD6U
         n8FVLEGLTdHNITbL24QmZaBqMeuphMzSjJYGZqNTsuQUrGzb3a8qfOkAdyfXpzJAe0nG
         GVcQ==
X-Gm-Message-State: AOJu0YzohmtS3g+xP51CZX81uIwKB4FzP35gmFqfnSFoH3dGrH4VBb0Y
        GJdTlfC+y1Yb+LkIfZSWwcyUbA==
X-Google-Smtp-Source: AGHT+IEETXzISBXjowFUDZEJ1z9P9NRNjTk+mxv4B0tWc+QhuxTCzgVqYH9DU8ad3610ghNzGTK9hA==
X-Received: by 2002:a17:907:75f7:b0:99d:fc31:242f with SMTP id jz23-20020a17090775f700b0099dfc31242fmr1512151ejc.66.1694599437069;
        Wed, 13 Sep 2023 03:03:57 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id sb5-20020a170906edc500b0099bc0daf3d7sm8211156ejb.182.2023.09.13.03.03.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Sep 2023 03:03:56 -0700 (PDT)
Message-ID: <3b36edcb-e678-8a4f-2ea1-7a7d7913a9ff@linaro.org>
Date:   Wed, 13 Sep 2023 12:03:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 1/2] dt-bindings: arm: aspeed: document board compatibles
Content-Language: en-US
To:     yangchen.openbmc@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, joel@jms.id.au, andrew@aj.id.au,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Cc:     patrick@stwcx.xyz, Jerry.Lin@quantatw.com, Eddie.Chen@quantatw.com,
        EasonChen1@quantatw.com
References: <20230912140532.3797736-1-yangchen.openbmc@gmail.com>
 <20230912140532.3797736-2-yangchen.openbmc@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230912140532.3797736-2-yangchen.openbmc@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/09/2023 16:05, yangchen.openbmc@gmail.com wrote:
> From: Yang Chen <yangchen.openbmc@gmail.com>
> 
> Document the new compatibles used on the Facebook Minerva Chassis
> Management Controller (CMC).
> 
> Signed-off-by: Yang Chen <yangchen.openbmc@gmail.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

