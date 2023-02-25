Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4A8C06A2A6C
	for <lists+devicetree@lfdr.de>; Sat, 25 Feb 2023 16:14:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229491AbjBYPOQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 Feb 2023 10:14:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35132 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229577AbjBYPOP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 25 Feb 2023 10:14:15 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E92B91816E
        for <devicetree@vger.kernel.org>; Sat, 25 Feb 2023 07:14:12 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id t15so2026986wrz.7
        for <devicetree@vger.kernel.org>; Sat, 25 Feb 2023 07:14:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:subject:from:cc:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aAn8974QxJQM/mYz2BJxPbBDPxMn3GnejkmRFkH9GXI=;
        b=q7ZUrCeC0vRJQwA04gj3mvWJ0PYVrMlztefvPQsVyPv3doR/tf/K9mPDiAHvCJXmmM
         SmQbZ0tWaFNc5sxtRuAWkLBwvjo5rGxtgP/3o+b+KDDpMQD0XKHCbovkPp+AVNEDlHtR
         +ImvfDXU0nINrYRouY34cTIIDB0703832Fd++lTpE8wFT5cLOkYCkizfz+toJ9M0Dhk5
         mOhwR+07tbqgIR2d6uNImZgj7O8SwWSGe4CqgIzvNNXFaG0mvlEP2r0lwLb772mMvjY3
         0LZvO7h7eFpibldF6A3yOq9HAYMvvxkRkdObtcCLXvE7PmDdig1Y+FgrlmPATiYXHjtI
         gT3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:subject:from:cc:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=aAn8974QxJQM/mYz2BJxPbBDPxMn3GnejkmRFkH9GXI=;
        b=HvM9BxGO0X2MHEnnpiS86HNcXNdxk4Q02SiZLICL9yvLfzyM4ZmhWOoDHEMvImvYMu
         B3xePHG2UjTSbwJuNqIiUHklD42xW2wpso4vACt5CmdmQVk56VGMQplghlMQSB9bYMH+
         A53SU0OKDf4zmPJfc6PF5vG24wS/kvKCW3MSdAw+UxRqlgJrZdS/4gEfiemEOzL20PQC
         gqNT3vgBZyVjyjr6IKdnT6rK1XfYWVcHwvrifq/KS9Q+OKJm/L1KM5T0VcY4nqlFdwyI
         iJvMq0nQFXuU9K+qM2d4IesNpyUSvG2FpVJQqQx+VBmrzo56OfS9ug+MNvtzw5erbwRs
         n8sA==
X-Gm-Message-State: AO0yUKWSdiSiR0R4R+EtqvOzKW/k87icqa4WAfBkBLmJYcdn1at8vE4H
        7pVjmdjBLU6M7risUuC5y9rukg==
X-Google-Smtp-Source: AK7set+4jebEtDTqo6qRMUN694xq9Q1DE0QswNAWC8eq6MAqtaH+QCpHpBt7P00LW2d6UT2VDPknmg==
X-Received: by 2002:adf:e242:0:b0:2c5:8c04:c6a8 with SMTP id bl2-20020adfe242000000b002c58c04c6a8mr17455819wrb.51.1677338051415;
        Sat, 25 Feb 2023 07:14:11 -0800 (PST)
Received: from [192.168.1.20] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id f5-20020a1c6a05000000b003d9aa76dc6asm6478150wmc.0.2023.02.25.07.14.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 25 Feb 2023 07:14:11 -0800 (PST)
Message-ID: <e48669a4-8fd1-dc0b-1446-7fbe1266c32c@linaro.org>
Date:   Sat, 25 Feb 2023 16:14:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To:     Thierry Reding <thierry.reding@gmail.com>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Any more work on "regulator: tps65090: Convert to json-schema"?
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Thierry,

Long time ago you sent:
https://lore.kernel.org/all/20211217170507.2843568-6-thierry.reding@gmail.com/

Any plans to resubmit it?

Best regards,
Krzysztof
