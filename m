Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A46D573022B
	for <lists+devicetree@lfdr.de>; Wed, 14 Jun 2023 16:46:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244520AbjFNOqS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Jun 2023 10:46:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236851AbjFNOqP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Jun 2023 10:46:15 -0400
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com [IPv6:2607:f8b0:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2CD841981
        for <devicetree@vger.kernel.org>; Wed, 14 Jun 2023 07:46:14 -0700 (PDT)
Received: by mail-pf1-x42a.google.com with SMTP id d2e1a72fcca58-652426346bbso5273000b3a.3
        for <devicetree@vger.kernel.org>; Wed, 14 Jun 2023 07:46:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20221208.gappssmtp.com; s=20221208; t=1686753973; x=1689345973;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+xLm4Mt5usYBeFNGXXmpqchycUZ5e+7+/NNA+W+5oEQ=;
        b=49iHWlJatBGNeViZG4mboIj2qlTs9VZj7DyRbWCL5LnSGfp0Aj9+hY19D9+3VSdN2A
         4DUUUQw2ZX3Iu/lhnh0TIf+ALlJv32JBuqtHHXpaF4MZHgbMzdWrJ4E/iAXSvrs6DR4x
         WjBZkcNF/zZR8TvhJI/X+/CtLQG2SJcqLeJd0wo39xNGTXPRy75+XrsHyzAITyGzQ4JX
         +f3zge/XiqE7uy4uUhvnfRrNCN88i57Zkxhb4UWaubvTsHakcfOmoREoQnWXJap/vNgA
         sGQStSQcBPdLAWKNuc6KThB24G7LWQIAgO0zLMX+qxQDilaQTzibXRnyokOSJRxrQ5Q5
         QbvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686753973; x=1689345973;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+xLm4Mt5usYBeFNGXXmpqchycUZ5e+7+/NNA+W+5oEQ=;
        b=iy8csFPFh81nN46bQg7xwuIXCZcvmTcJltGHNxiEetmGsn68W3j+tK8DRz4hEGJkjE
         vyvXRUR0xevHb35zH0TdylFYUHdzCAipUJWFUz4DdTJ33uUtQGJW2jPVIRpDtg8Otdj5
         hi0w1kvGXEJsHikOGJO83FH8HXbmhr4UBsR+x1jYD4ctCbKFiyVfeGFiPNUASGmrrRI/
         FCm4Ct8oao0XN1FCMSSVhqPmXxV5NSp75topkd+aeybLzMyNpLNLmwULGX4BzdhvGcpJ
         SKJUZnJUqdhTQ1oq6eX06kQLoiJoM7/29Ot+5guJu1Dfs2CWtTSiYoMQDpIVy9etKZQF
         f0sg==
X-Gm-Message-State: AC+VfDy6NoNKpVUvJfH6fuPHWTsTR2AIudo3R97P+by8ZN+CJjSWQn5w
        pp1jd+xs67lyWIaRZ8b15oWqvQ==
X-Google-Smtp-Source: ACHHUZ6LNRJOcGwpGUMflzElhsfo6fxzDZwXU7iTG2/LQOEYbmKryQ15aqEgj1/fDj7dn2k+yD7lDg==
X-Received: by 2002:a05:6a20:7484:b0:100:b715:8ab2 with SMTP id p4-20020a056a20748400b00100b7158ab2mr1854527pzd.46.1686753973511;
        Wed, 14 Jun 2023 07:46:13 -0700 (PDT)
Received: from localhost ([135.180.227.0])
        by smtp.gmail.com with ESMTPSA id y10-20020a63180a000000b0052c3f0ae381sm1423428pgl.78.2023.06.14.07.46.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jun 2023 07:46:12 -0700 (PDT)
Date:   Wed, 14 Jun 2023 07:46:12 -0700 (PDT)
X-Google-Original-Date: Wed, 14 Jun 2023 07:46:10 PDT (-0700)
Subject:     Re: [PATCH] dt-bindings: riscv: cpus: drop unneeded quotes
In-Reply-To: <20230609-discourse-lapped-5217cc4d7ede@wendy>
CC:     krzysztof.kozlowski@linaro.org, Conor Dooley <conor@kernel.org>,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        Paul Walmsley <paul.walmsley@sifive.com>,
        aou@eecs.berkeley.edu, linux-riscv@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
From:   Palmer Dabbelt <palmer@dabbelt.com>
To:     Conor Dooley <conor.dooley@microchip.com>
Message-ID: <mhng-c1f5c918-1b72-4a2b-91c0-eea05dab14b7@palmer-ri-x1c9>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 09 Jun 2023 07:21:17 PDT (-0700), Conor Dooley wrote:
> On Fri, Jun 09, 2023 at 04:07:06PM +0200, Krzysztof Kozlowski wrote:
>> Cleanup bindings dropping unneeded quotes. Once all these are fixed,
>> checking for this can be enabled in yamllint.
>> 
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Acked-by: Palmer Dabbelt <palmer@rivosinc.com>

Did you want me to pick this up in the RISC-V tree, or is it aimed 
somewhere else?

>
> Thanks,
> Conor.
