Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4985A6BE97B
	for <lists+devicetree@lfdr.de>; Fri, 17 Mar 2023 13:40:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230261AbjCQMkl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Mar 2023 08:40:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230205AbjCQMkf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Mar 2023 08:40:35 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C2448FBC6
        for <devicetree@vger.kernel.org>; Fri, 17 Mar 2023 05:40:06 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id eh3so19743101edb.11
        for <devicetree@vger.kernel.org>; Fri, 17 Mar 2023 05:40:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679056805;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NZdioywxv4DBqMZ9RgNrXeNmAndv8OmU2ThJ2U10tRs=;
        b=oQYhioHIBjtpW1kqQ1fRnRJu7V+nvIauVTm4GX9uq0czcvyOrdWzmXDY4Bu8KxvTE2
         1MlEVtv75YtG/UP2hMxE+OcUGufO4jUERYlrSti4hPKa1a6GfLPnbPJtMzq3mUQHhmFp
         HxsIzmiIl80ra9Rvydi0/Qawv104Cg1O1UqYBfuryXPBdygSY51KhZs1QEHfv4EWBKpy
         NkTf2SHe66HQEEuvBzcqJsNmCxuIhLsQ7iHjjUaLC00IfFOh/bRj43qQIZ0fWjoAjAkw
         5r7mGajiu6P2A6fITIHeSFd0o5Qeti0E065+/T6imUg2+NJD7Xag+qpjMoiZpMzblByM
         rnfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679056805;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NZdioywxv4DBqMZ9RgNrXeNmAndv8OmU2ThJ2U10tRs=;
        b=JQKpXVe4JgTZY2seqhtsP73Jh5QponSSeN/pXdS3GCe929QD3mfpTmjZasV9XdPoiA
         rJuHOl5q5E0kFx05SOZcK/lqxClKxlNd6l3Y219O9ljnDuBssMScBIJL252wqlk9O0K1
         vbOOLZcCfXomJIGzz2RVriJoMyXQzvpU7sh9v/3aNq0c/LKQqFllTiSUx7zbdW1ZWXGW
         yn0uzb+4GHfkN+jLByAzum8il/qPDZHIrTupknX00Xm4zziqRDNsncCoSI3bvfoSqD+9
         WvtFP8QhBmtnmkPdiglOn7OxsbLF70d0k3bF76QwtJopkjpGc1dmxQcA7sDRu0LWue/p
         sAMA==
X-Gm-Message-State: AO0yUKU8ed8KK6i+0OPj4rDJM9RvVrB3lpAhNVQzd4fFGQgRB98vQlvc
        eGV4RdYh9FKe8fWugbqONuiBZsUfztBuOg+RX6U=
X-Google-Smtp-Source: AK7set/zHtS5IdCaHy4y7kYzlopahgl0CEDEM45X/bMGHuNVgPhr+sgmYVzyCrdvUdB1LMGdzUaY6A==
X-Received: by 2002:a17:907:6d0d:b0:932:29a7:56ee with SMTP id sa13-20020a1709076d0d00b0093229a756eemr1880706ejc.12.1679056805275;
        Fri, 17 Mar 2023 05:40:05 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:d013:3eeb:7658:cec])
        by smtp.gmail.com with ESMTPSA id la18-20020a170907781200b00914001c91fcsm937445ejc.86.2023.03.17.05.40.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Mar 2023 05:40:04 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh@kernel.org>, Robert Richter <rric@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] arm64: dts: cavium: Fix GICv3 ITS nodes
Date:   Fri, 17 Mar 2023 13:40:03 +0100
Message-Id: <167905678622.28214.16950824199262428569.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230208185506.2305349-1-robh@kernel.org>
References: <20230208185506.2305349-1-robh@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 8 Feb 2023 12:55:06 -0600, Rob Herring wrote:
> The GICv3 ITS is an MSI controller, therefore its node name should be
> 'msi-controller'. The ITS node is also expected to have '#msi-cells'.
> Add it on Thunder as there are no users. Thunder2 uses 'msi-parent', but
> Robin says that should be 'msi-map' instead and I'm not sure what's
> correct for it.
> 
> The unit-addresses of both the ITS and main GIC node on thunder2 are also
> wrong, so fix them while we're here.
> 
> [...]

Applied, thanks! Let me know if someone else wants to take this.

[1/1] arm64: dts: cavium: Fix GICv3 ITS nodes
      https://git.kernel.org/krzk/linux-dt/c/d2e5c16f6c86901040f3bb6b40d1a01ccf1a21b0

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
