Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 74AE767D87E
	for <lists+devicetree@lfdr.de>; Thu, 26 Jan 2023 23:34:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231961AbjAZWdY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Jan 2023 17:33:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33582 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233241AbjAZWcx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Jan 2023 17:32:53 -0500
Received: from mail-qv1-xf2d.google.com (mail-qv1-xf2d.google.com [IPv6:2607:f8b0:4864:20::f2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFF7723658
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 14:32:33 -0800 (PST)
Received: by mail-qv1-xf2d.google.com with SMTP id r14so2607109qvx.4
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 14:32:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=criticallink.com; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SMXyMh+Lwz3neJnqgLoV44iMFdZ/93CQTC6eXheel78=;
        b=khx+stdm8gj3hVORCp3vGGwzfpFUtfpBgTEIanFn6fjEYFTnrg3+LJgDpc96HX/Ty7
         4r8nwbwrUYp33LQaJHweQcEKn8jjR8j7kqqFxk55wQLrkNkkwZMLgPnXhCBVRRB8wRD4
         YjNo3Y7rVbe+cT8kXRVPzB/FCCBY+8JRM2SHLeXxJjRUndyxqED4/EVnvYQLPafZmOBE
         fHQiMZuR+zPKShSVcp/k9YHvED3hQ0szFF+oWdaqPwNspv/2yQ37ogMmIOdWaKo9p/fJ
         +etDkPnrFgxbbafSb+giy1XA1g061fGgoHhmDN1gVZcc0AAm7jZ4fpNeMg9fv5eL8TQW
         IfrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SMXyMh+Lwz3neJnqgLoV44iMFdZ/93CQTC6eXheel78=;
        b=vDKG85s1Z/6q1g1FNI+Bz1koifZnyeW7E/wg0H+Y1iqBrjvq9mwndf4C6brAI2Jshc
         WXgvGnwFlKUF7BdiqE3v5ynYjnJmNrdPDxE7DJHohSN3zWclyO95tgXgvIPCfhzkOlM/
         Xg0j2GGgGWvPnDpcgso8/oyJjdyz+JqfyMf3oO8d1hKb2FlbLCZGAlaEKbMd1jyPkkEZ
         A4PZ73lNknCS6oA25Vc2DdYRrx4CarfetU6DrYk5EUuXBtxxZF+a7u2808VFeT2BFf8x
         Crs1BqPoJYgaJBrLhmd9t0RbEe+/DDyQBnrqvEO+xW9kNgyDH/Fa1nv0MZeq52akClOO
         VThA==
X-Gm-Message-State: AFqh2kpNYyMBoKLwYSOHx03Tv6YDyOOjl+joRPPB+kVavcrja48qbEYK
        VFRngX+d1DZoXIVv4XitfQlH3g==
X-Google-Smtp-Source: AMrXdXuGmsLBqfAHwn5t37b9KDNwt3R6jfn4nDAVPNlKXvZkF7hctLEEKstGiDeMd9zvJeYTrKdZ+Q==
X-Received: by 2002:a05:6214:3492:b0:534:2b55:6320 with SMTP id mr18-20020a056214349200b005342b556320mr55824540qvb.9.1674772353054;
        Thu, 26 Jan 2023 14:32:33 -0800 (PST)
Received: from [127.0.1.1] (static-72-90-70-109.syrcny.fios.verizon.net. [72.90.70.109])
        by smtp.gmail.com with ESMTPSA id m7-20020a05620a220700b006ff8a122a1asm1723091qkh.78.2023.01.26.14.32.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jan 2023 14:32:32 -0800 (PST)
From:   Jonathan Cormier <jcormier@criticallink.com>
Date:   Thu, 26 Jan 2023 17:32:27 -0500
Subject: [PATCH v4 5/5] hwmon: ltc2945: Convert division to
 DIV_ROUND_CLOSEST_ULL
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230126-b4-ltc2945_shunt_resistor-v4-5-bb913470d8da@criticallink.com>
References: <20230126-b4-ltc2945_shunt_resistor-v4-0-bb913470d8da@criticallink.com>
In-Reply-To: <20230126-b4-ltc2945_shunt_resistor-v4-0-bb913470d8da@criticallink.com>
To:     Jean Delvare <jdelvare@suse.com>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Bob Duke <bduke@criticallink.com>,
        John Pruitt <jpruitt@criticallink.com>,
        Jonathan Cormier <jcormier@criticallink.com>
X-Mailer: b4 0.12.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=708;
 i=jcormier@criticallink.com; h=from:subject:message-id;
 bh=ztSizwKCRQbuO5hjHb+ixZi9TnHDXa8I5HXLLGMpWUk=;
 b=owEBbQKS/ZANAwAKAdzX/S4LNuuqAcsmYgBj0v96Md1xv21n7cR5HEwD5IPLFz0I12Y2BnjVI/ES
 HP4bOeCJAjMEAAEKAB0WIQT/MozqCeZtYxNnVN/c1/0uCzbrqgUCY9L/egAKCRDc1/0uCzbrqoLlD/
 wNZmu751rOnzdh7g2RQ5g7eZ3Y51D8vPnAwxHLHA8qgc1jAv7nVp4+T4xtxMyfbrI8R8VNK0PM8NLe
 l/expSHT30K8SZhxjrLn7r5AdiAh2jOLIxPCbMTnf4ZSZOAAViy9YUhLFpg94Qa9bNOVupLDd6p3ml
 QJuuW4HoPRJkcjetV/cQLrHhkdcJd/fxExAnQABDGltSrKhbIFDwVVKxkOhgAzCs4QiZgB91KWpdei
 sa5xVLscph09wvnHjkKGG1hIK0pISajE9GIBPdM1R7ek8rdhQCU3jblxIkQxDFnjWHgjE01V2W9HQ1
 5NOM8sFqobmMsOyr4S8h6Y+Kcikh6HGZRdquU+oMQy+c6Y97VH4gG24ZWTNhNxau3qIVJcCb4Cmv2m
 KWYrNfJCNe3zF7wN0qy7D4WT2aVhRWGHZCGztcQdhg6CMc+jESLjuc4maOg0pxjh8mKOledXGK6LLm
 3nKoCUicm14yoD6vnCcHB+FuZLc+o1crK/+UmOTKEYbzMY79FNEHQNfx90bs+qz0wOzdG70lb11OqU
 /OcejxRTDxEHxdsXj7p29v1a/NOfvUrzW0rmZqoNdGB1kESXI+bOINOhSyWeb9TUAfmQYC4rISi15G
 FTTLoHHR5blXPO0dLrzaJ9g6O2dO/ZiTKmUEQAwYDQmUuy2sZdn+acrXVrXg==
X-Developer-Key: i=jcormier@criticallink.com; a=openpgp;
 fpr=FF328CEA09E66D63136754DFDCD7FD2E0B36EBAA
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert division to DIV_ROUND_CLOSEST_ULL to match code
in same function.

Signed-off-by: Jonathan Cormier <jcormier@criticallink.com>
---
 drivers/hwmon/ltc2945.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/hwmon/ltc2945.c b/drivers/hwmon/ltc2945.c
index 0b5e448b4f12..33341d01f1f7 100644
--- a/drivers/hwmon/ltc2945.c
+++ b/drivers/hwmon/ltc2945.c
@@ -212,7 +212,7 @@ static long long ltc2945_val_to_reg(struct device *dev, u8 reg,
 	case LTC2945_MAX_VIN_THRES_H:
 	case LTC2945_MIN_VIN_THRES_H:
 		/* 25 mV resolution. */
-		val /= 25;
+		val = DIV_ROUND_CLOSEST_ULL(val, 25);
 		break;
 	case LTC2945_ADIN_H:
 	case LTC2945_MAX_ADIN_H:

-- 
2.25.1

