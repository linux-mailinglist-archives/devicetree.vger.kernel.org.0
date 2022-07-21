Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3964857D74B
	for <lists+devicetree@lfdr.de>; Fri, 22 Jul 2022 01:16:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233117AbiGUXQH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jul 2022 19:16:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229645AbiGUXQG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jul 2022 19:16:06 -0400
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1C3E22296
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 16:16:05 -0700 (PDT)
Received: by mail-pj1-x102a.google.com with SMTP id gq7so2936385pjb.1
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 16:16:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=IqzC8vlJNhJ0aqRa5jeMssGuTaXywSWK1/x0E/h26io=;
        b=CANqfc615V6vKSVVv4AYAm0npyYuDQdebLW3KBbMbnC9xnR4luJ3uUKs+oPGjYouCt
         V9sg8ZZNCfqPlFkA/P3gxVacHas4xaysVWfjQniYUn159aVpqFaxiujqG9/83sJa05jW
         hxpkZqHF20JVdW3iY6QnQVrbsNeC4NtFEA8TVW1GzLUau7kLjl04GlnrEpFCLh5aV16m
         ZQE0INhDQLbnvocQUelT1dAuxmY1ENAYPOpWTnKXsxpyRTjVvNIbUnxR61qFotb3kRSN
         3MP20QaOYATC8dPaT064N/g6xU3AZeLsEolCO2dowb8+fFb4+eQ/RemkGXORJEm/HHx8
         UMRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=IqzC8vlJNhJ0aqRa5jeMssGuTaXywSWK1/x0E/h26io=;
        b=4IAujWzus5UvkUKOnjM6sP2RttOTzDAYNZi/sYIwmjWaPh1+3OvZ9vGH8LeoMO0nJz
         HouaeU+/Q5+EW6VWOFtQNYs5zD3sTZWBHiB4JGjs687a6Gx2ZqxUQTzvXuNNLZDMEoes
         fuiA8LZzpVHaow3HE1J1nufEWs1R2bGLIJ3vSyS5VQtSTel/sMHZItZq8on9oof6vn95
         S/KFun99yWwcz2jlztJM0lFw6l89eO17bDfWnYkvV3Eu+U2Q/Mn+2/ya+B7cIawUlUR1
         +yaqcvXY/xuyOVinjji35k3l0Jhxunc5KAcfHACTI5MQcIsLfQC/hVEaJPorS2xzu712
         oa2w==
X-Gm-Message-State: AJIora/71JpikvuLUSO3I/MSVzLEKPpzYd1gdjA2xWaKfSfYCt2RlJ1L
        l/ttOPC952U2YhTPwWE1iI9JVsqZfX4=
X-Google-Smtp-Source: AGRyM1viQXnvcwwJ+JXckMMpbwhK6SujmaLtxa05fMiPxgCLTkE9z2oPVFSqvcME/wHotv7GLtJhYw==
X-Received: by 2002:a17:902:eccf:b0:16b:f555:d42e with SMTP id a15-20020a170902eccf00b0016bf555d42emr758210plh.75.1658445365171;
        Thu, 21 Jul 2022 16:16:05 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id m30-20020a634c5e000000b0041173d92b35sm1999331pgl.81.2022.07.21.16.16.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Jul 2022 16:16:04 -0700 (PDT)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH V2 2/3] arm64: dts: broadcom: bcm4908: add LEDs controller block
Date:   Thu, 21 Jul 2022 16:16:03 -0700
Message-Id: <20220721231603.2571100-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220718132100.13277-2-zajec5@gmail.com>
References: <20220718132100.13277-1-zajec5@gmail.com> <20220718132100.13277-2-zajec5@gmail.com>
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

On Mon, 18 Jul 2022 15:20:59 +0200, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> BCM4908 includes LEDs controller that supports multiple brightness
> levels & hardware blinking.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree-arm64/next, thanks!
--
Florian
