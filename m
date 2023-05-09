Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BAD7C6FC0AC
	for <lists+devicetree@lfdr.de>; Tue,  9 May 2023 09:47:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234483AbjEIHrD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 May 2023 03:47:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60428 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234438AbjEIHq4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 May 2023 03:46:56 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 850B8D863
        for <devicetree@vger.kernel.org>; Tue,  9 May 2023 00:46:50 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-3077d134028so2745172f8f.3
        for <devicetree@vger.kernel.org>; Tue, 09 May 2023 00:46:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683618409; x=1686210409;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b1iixLC9RX2qMWRpDfnEL3lMWKjk7W8OVMFDuz9hQ0s=;
        b=uDkUjjVOVU02sBKBne8xf0xR+N3JdspRULIu+uZoG013Jg6PvO8rTqm8LaAiMUR2RQ
         Rq/hxS+6502gWRo9fk1PR/vayt9qGNU+MNHrRfcmJ12inVGK/Uk8GGJPal5QzQHKJI39
         CX3eKzufst1ktiypBZHbHMeIf2R9h6XpFo2iSRH/Bq6z4xV0WTzrUjCfueXdCMvd1N7a
         mKItASdxjvZmbpA7PXuUQ+aYc0GYrhGarMCaG2PRD9hB378YMnS+y9KEs8X7i97OMlwM
         rElZjDRca4RuXh47Y/uAVmvZJ7BTdmCbJBEP97pqhVdHxBLCDAY2urJ3tz0KLQKasWcP
         EPsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683618409; x=1686210409;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b1iixLC9RX2qMWRpDfnEL3lMWKjk7W8OVMFDuz9hQ0s=;
        b=ULezE1XVEzbwUlExOe7VAbe6C8Pa4B6vWz1jBaXK6X+2HW5KF5/GJgKrpQeHzUbSf4
         0GYi9fllD10R2+NcPgx0zVyr6NlipXAL0SSLcrIBm+VKgzBCudZRGI/VCrailI4TqwBT
         vARgAQSG/DnRaP9l5LwvnKGzhhy1+Ll5GR0BKZSKbcmKB2czhwGVXmCgwOaJiYpk5XhV
         7anXFMwJdGbbf6GG2A/JJ+p4pQDSDJSL/r6h3LStzf4lL7WcleHA6XmD5Z9v8vKOCTGU
         tDa8v24QXGS74Y2cP8LnuZGZ5ZOxmEoaWNHiTePxOn3lMD6gUnMO86EDvemIQ3I7a+3T
         +eAg==
X-Gm-Message-State: AC+VfDyRwBNdCdtIEkVhWkof6FEFXsrPPYSMeILQ+LXHnFr5LnFhGQJ7
        WoHqBJkjAZf+mOEW4ykGKPWcJA==
X-Google-Smtp-Source: ACHHUZ5e8xCoGLYdKisfc9zZhJ3RhRhQsMhlp48C893h0J6BiBCK1oelOxCx/F7OgroHp3uvLsWbHw==
X-Received: by 2002:a5d:444e:0:b0:306:2c59:3838 with SMTP id x14-20020a5d444e000000b003062c593838mr9593954wrr.44.1683618408864;
        Tue, 09 May 2023 00:46:48 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id q23-20020a7bce97000000b003f42d2f4531sm61501wmj.48.2023.05.09.00.46.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 May 2023 00:46:48 -0700 (PDT)
From:   Neil Armstrong <neil.armstrong@linaro.org>
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        khilman@baylibre.com, jbrunet@baylibre.com,
        martin.blumenstingl@googlemail.com, hfdevel@gmx.net
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <trinity-bf20bcb9-790b-4ab9-99e3-0831ef8257f4-1680878185420@3c-app-gmx-bap55>
References: <trinity-bf20bcb9-790b-4ab9-99e3-0831ef8257f4-1680878185420@3c-app-gmx-bap55>
Subject: Re: [PATCH v2] ARM: dts: meson8b: correct uart_B and uart_C clock
 references
Message-Id: <168361840805.3267296.10834531895749908992.b4-ty@linaro.org>
Date:   Tue, 09 May 2023 09:46:48 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.2
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, 07 Apr 2023 16:36:25 +0200, hfdevel@gmx.net wrote:
> With the current device tree for meson8b, uarts B (e.g. available on pins
> 8/10 on Odroid-C1) and C (pins 3/5 on Odroid-C1) do not work, because they
> are relying on incorrect clocks. Change the references of pclk to the
> correct CLKID, to allow use of the two uarts.
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.5/arm-dt)

[1/1] ARM: dts: meson8b: correct uart_B and uart_C clock references
      https://git.kernel.org/amlogic/c/d542ce8d4769cdef6a7bc3437e59cfed9c68f0e4

These changes has been applied on the intermediate git tree [1].

The v6.5/arm-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
for inclusion in their intermediate git branches in order to be sent to Linus during
the next merge window, or sooner if it's a set of fixes.

In the cases of fixes, those will be merged in the current release candidate
kernel and as soon they appear on the Linux master branch they will be
backported to the previous Stable and Long-Stable kernels [2].

The intermediate git branches are merged daily in the linux-next tree [3],
people are encouraged testing these pre-release kernels and report issues on the
relevant mailing-lists.

If problems are discovered on those changes, please submit a signed-off-by revert
patch followed by a corrective changeset.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git
[2] https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git
[3] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git

-- 
Neil

