Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DE804690236
	for <lists+devicetree@lfdr.de>; Thu,  9 Feb 2023 09:34:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229632AbjBIIeR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Feb 2023 03:34:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47628 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229677AbjBIIeP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Feb 2023 03:34:15 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ECA18518C7
        for <devicetree@vger.kernel.org>; Thu,  9 Feb 2023 00:34:13 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id n28-20020a05600c3b9c00b003ddca7a2bcbso901243wms.3
        for <devicetree@vger.kernel.org>; Thu, 09 Feb 2023 00:34:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r6Gx4R8kVvNzk+VzWyuBo9M3Fq9oEvOv8oe6nnaK0aE=;
        b=F5oFQl7L2U3DDpre1RpSxGfinwhte/Lr3+J9RJP+F0nyRYTA3yyTobPu9I/iIBdE0H
         NWsQ3vdQjVhLRz8rgmq4ga2k10GQH/6vlsekQaMoL96KHz/ltojSGXepRtbbRawLuvie
         V4uU1PNzqut9r5BBRLq/S/PDyEd9rX23vOyXoYA6pIlvzmGxa/GuaKyq+nqKnoVtfstK
         mDpQNnmZ01AWSXQ+F0rO9NhIe+OUTpMkixkeuFKiPDZ++vdJlruiYlRvoT4iormZPLkR
         oJnIOeb+oFIPAosJ6yXwNN3+zSJcpGEz/kkrsNZAPs7tA5DUw4pF5eVXGNL91mbOzcbJ
         D/eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r6Gx4R8kVvNzk+VzWyuBo9M3Fq9oEvOv8oe6nnaK0aE=;
        b=ih1Sr9SyekkmZC6mqqms6gLbekr8I1wD6c17D52+ppDFQclFhAIXp4p57XHkB8UNeq
         qFaE2q2sPhpxF9A/8kZVl/gzyf+xfaUw3BcFTUj21zCDhsgV1qgn2gcyrDURWDiw1oDN
         bcA8/HLP335jWwvz0if5N9gYO6CkOxwjRYkgTlHzC84LFxKXsz/ZsEghUpHLWqXeW5Se
         Jl9ce2wQGS/eRZVu9gtOZVmAaOFXxdKVj4ebepic9igO4FEQZYlfZlnUs9yWA1d6pETm
         DmUoXhvuI7GTClsiAdzELaMVYmNYJyuXuF6BrI9iHFJmERbJPSC0aia4rBC7wWFH/E5X
         xLBw==
X-Gm-Message-State: AO0yUKU+dtxmaPUkfIh3CyIYMClJicLSSEkyvj/XjcBUkxdGH4U2l0R0
        fONpi+CWaodVf9tPrHVZVSRX+w==
X-Google-Smtp-Source: AK7set/b0vsPagbekwWZBq/6HeoQJIXxxSx+zZ79h0wufDlPa4ndoZBBEuQP0/KgmaK9SX0yl31wwg==
X-Received: by 2002:a05:600c:3510:b0:3dc:42d2:aeee with SMTP id h16-20020a05600c351000b003dc42d2aeeemr9147288wmq.25.1675931652307;
        Thu, 09 Feb 2023 00:34:12 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id m18-20020a7bcb92000000b003c6bbe910fdsm4214648wmi.9.2023.02.09.00.34.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Feb 2023 00:34:11 -0800 (PST)
From:   Neil Armstrong <neil.armstrong@linaro.org>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
In-Reply-To: <20230207-topic-sm8550-upstream-vtdr6130-bindings-fix-v1-1-0ba2323420c5@linaro.org>
References: <20230207-topic-sm8550-upstream-vtdr6130-bindings-fix-v1-1-0ba2323420c5@linaro.org>
Subject: Re: [PATCH] dt-bindings: display: panel: visionox,vtdr6130: add
 missing reg property
Message-Id: <167593165135.1280212.15464621663027280533.b4-ty@linaro.org>
Date:   Thu, 09 Feb 2023 09:34:11 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.0
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, 07 Feb 2023 11:04:36 +0100, Neil Armstrong wrote:
> Add missing reg property and update example to add dsi top node.
> 
> 

Thanks, Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-next-fixes)

[1/1] dt-bindings: display: panel: visionox,vtdr6130: add missing reg property
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=467fbc77f673ecc9dcf4e58ffc1fa426a22df7fd

-- 
Neil

