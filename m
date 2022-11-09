Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 41DB5623264
	for <lists+devicetree@lfdr.de>; Wed,  9 Nov 2022 19:25:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230137AbiKISZh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Nov 2022 13:25:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229452AbiKISZg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Nov 2022 13:25:36 -0500
Received: from mail-qv1-xf30.google.com (mail-qv1-xf30.google.com [IPv6:2607:f8b0:4864:20::f30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0454110F
        for <devicetree@vger.kernel.org>; Wed,  9 Nov 2022 10:25:35 -0800 (PST)
Received: by mail-qv1-xf30.google.com with SMTP id e15so12863904qvo.4
        for <devicetree@vger.kernel.org>; Wed, 09 Nov 2022 10:25:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LOBBIG9wvtmZaZtk/sgW0J6QaE1x6xfLCaJkICzFSqA=;
        b=VtL+xv0NZ5Ps/w5qpvO06bMVKnv3uTC7hqGayS8f19N1uhQLAUc6Q4VKEQgTBKbqM3
         OHgYLcCVx1kQfQ7Jc3kzUdaXXiDmxY4oMw+7Z0K9ERMBE9sS/VnyTAZ0GyX0omhFyhId
         rlgDVbEMkfpAA7Die0wReoE1zCbHc6C7c//vpZWlfuXv6lFF+rZZ0+nUZRHxkKNtB/Ds
         B8qaLUR2lzSopqQJsKfcvISZjN2WNpKYB40tUjAJBbsAOM4+iwj4lvAeR0tKyzL/kbTr
         QCv2YIcYUToCMz2GW1+D8QgoDcqeWcsJK+VAjRwXrFqguzZy3KxFse4er2w80bnCHLvv
         DWOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LOBBIG9wvtmZaZtk/sgW0J6QaE1x6xfLCaJkICzFSqA=;
        b=d5wtt8jGKDNQ5ORKHEGJjyMu6jLRMUhsoHlVE5k2/LeP+34zE5j1W03qq533XzuSko
         nN/VRsBz8lFPQeU4m5Z40vEDZsR102YxSJq5TqE0EOmYJm1t8NZFhQ3yJvvRpHtou9ck
         7QSHr6JdF/ZhgVqL0JklNx2fNxXTvrDPszqTed9OZ9HtX4fYTPrRbp0RkcKjnPajjAEI
         wOOjrmX3GGiLYWEQnYY8rRxNhhp9iZRMQPV7XbBK/lnKla7mN/UUEpx7N35XQ1CvWvln
         CWL5C3sDK715O2S1W4l3MviNrb7ghyWd2bTnwltxhjH6hsc8cJf1CrL09Px+VC//J/0t
         7Bsw==
X-Gm-Message-State: ACrzQf3trWdoQJZBmnmvVObNcJ17NMPKk4E/9GcH+Klp7joKwWz0fjE4
        2h8aJHhr/vOtUfQM9Ovfu0A=
X-Google-Smtp-Source: AMsMyM7K8l/R32DS4A19ZXm8ebtjzP57pzuc1S8MDMniX3CTiWYf2LT1ip6FfkpPvzurtP9KUo91jQ==
X-Received: by 2002:ad4:5fcd:0:b0:4bb:f7b9:aa7b with SMTP id jq13-20020ad45fcd000000b004bbf7b9aa7bmr49257648qvb.91.1668018335034;
        Wed, 09 Nov 2022 10:25:35 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id h4-20020ac846c4000000b00398a7c860c2sm10071031qto.4.2022.11.09.10.25.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Nov 2022 10:25:34 -0800 (PST)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        William Zhang <william.zhang@broadcom.com>,
        Anand Gore <anand.gore@broadcom.com>,
        Kursad Oney <kursad.oney@broadcom.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH] arm64: dts: broadcom: bcmbca: bcm4908: add TWD block timer
Date:   Wed,  9 Nov 2022 10:25:32 -0800
Message-Id: <20221109182532.879473-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221103105316.21294-1-zajec5@gmail.com>
References: <20221103105316.21294-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu,  3 Nov 2022 11:53:16 +0100, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> BCM4908 TWD contains block with 4 timers. Add binding for it.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree-arm64/next, thanks!
--
Florian
