Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2FC7360E5E9
	for <lists+devicetree@lfdr.de>; Wed, 26 Oct 2022 18:58:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233976AbiJZQ55 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Oct 2022 12:57:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233941AbiJZQ5z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Oct 2022 12:57:55 -0400
Received: from mail-qk1-x735.google.com (mail-qk1-x735.google.com [IPv6:2607:f8b0:4864:20::735])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C5D59A299
        for <devicetree@vger.kernel.org>; Wed, 26 Oct 2022 09:57:52 -0700 (PDT)
Received: by mail-qk1-x735.google.com with SMTP id b25so11018419qkk.7
        for <devicetree@vger.kernel.org>; Wed, 26 Oct 2022 09:57:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IYncI9iq1pDXu9ob3vX3woC79Xi+GcEdWFaiHxAv4cs=;
        b=vjNd97uE6/lUxlklcedmQU5BK0kwqnrglytRWk/Mt0bakrpewIs8SuNh7nyx0F8XJu
         WmfaLc3jjLEgW8kp682wv1/N2ZbOsHEjgXbRZ+P2aOV58FAmq3Duz+ySDldO/eFhL+jw
         0+bgads4K/z1I/QFWnnpMzO6w1Fpu/0RjtelDnWjdLx2cyJpG2+uCD5r5c/pdo/t2WTA
         Bpr6dGGQnRDw6FwOWl+KUiErf7OPqmpX+e0kdALO8YSEMl5O2AfVY6qxHMpky8w2+jnP
         KqBetI4aH0Q441fwsdb4N/dG+mMuOYlAr75ACwjsC6KHVkZNNL6H1JJ1OoZfUSVPHN0c
         CbgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IYncI9iq1pDXu9ob3vX3woC79Xi+GcEdWFaiHxAv4cs=;
        b=NX1neXUZp72nQn5vXVrNLh+VYpcGGB0zktLXF6Pe3zTL4iwoGs/i+HiNSPED3wJdwY
         rAktofcPLL1W9wdzc3mcSOmBT+zEqzcadKY/OfdeihnyGj/M+7PVa97HpYRiNsdL7pIx
         NBcIMNaup6AWWzQh++4XycZezJwdO72J4/8Pg9IuEI5GcHds3tDxMhZN69zeYzysb9lX
         Qku0rKgnj3Zi+a49LTw0VfsRFosQBDF6hJ20SiHtdksmjEho2zzdT6PTm2fJYglARC5+
         C+seTeZKbHfHxqnKA2rmQLz1aMFJd4/VeATelu2GHHfu7ews5S3l9M6y5IfAc0uc7vs+
         3mZg==
X-Gm-Message-State: ACrzQf32JpGFI18NTwPKno2ZfDZGs43UJsSipD9fEI36WThtXmSo/az0
        LgZw7F9LCcA8/weEOOhfA3yezMkLkQdtjw==
X-Google-Smtp-Source: AMsMyM68uIT4uI/nLKrAReT2Gg8+sF1erjHZI4opwTnws2cuUsk5iOrGknrwZBZXk/BpXIiATitubA==
X-Received: by 2002:a05:620a:24c3:b0:6ee:d4bb:e5b0 with SMTP id m3-20020a05620a24c300b006eed4bbe5b0mr31286865qkn.471.1666803471057;
        Wed, 26 Oct 2022 09:57:51 -0700 (PDT)
Received: from krzk-bin.. ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id g21-20020a05620a40d500b006ee8874f5fasm4360759qko.53.2022.10.26.09.57.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Oct 2022 09:57:50 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Gregory Clement <gregory.clement@bootlin.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        linux-kernel@vger.kernel.org, Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH] ARM: dts: armada: correct indentation
Date:   Wed, 26 Oct 2022 12:57:41 -0400
Message-Id: <166680346261.49767.17898258491384283819.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221002092008.69003-1-krzysztof.kozlowski@linaro.org>
References: <20221002092008.69003-1-krzysztof.kozlowski@linaro.org>
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

On Sun, 2 Oct 2022 11:20:08 +0200, Krzysztof Kozlowski wrote:
> Do not use spaces for indentation.
> 
> 

Applied, thanks!

[1/1] ARM: dts: armada: correct indentation
      https://git.kernel.org/krzk/linux-dt/c/a7569f7d21e7a8b4196600672e25039fb58bf322

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
