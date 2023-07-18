Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7FC95758520
	for <lists+devicetree@lfdr.de>; Tue, 18 Jul 2023 20:54:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230471AbjGRSyV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jul 2023 14:54:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230475AbjGRSyV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Jul 2023 14:54:21 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8883130
        for <devicetree@vger.kernel.org>; Tue, 18 Jul 2023 11:54:07 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-5216f713f8bso6233279a12.2
        for <devicetree@vger.kernel.org>; Tue, 18 Jul 2023 11:54:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689706446; x=1692298446;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u//A+GlhAlttSgwEt3gkumyAtdqzMVpBDzjR8GDGYAA=;
        b=E1wLf8L6/nbq8aJQ//pWBjId0ztDeKMPvJHWR0fIfH1VudG2o0yfado1tfuN5ez38G
         La8OCLd2zvzmH5Kny3W0JmyjVw81V1WTjRaKe2iGpBYjNH0kd6ui2JJESG1OeC4dUkAz
         jtmdMFHeG33b8CxIKyfHcaObV0ECbnmaKi/VfZuj3g3+/vIKodcHsdF4iGvRlxEW0Oes
         Yn0F1/kcO8+hTpM8wvi9FgmnWmz1mbjtmNhfboEAewnbn0jQsw0zQgIiHf2hpirB+DWW
         W0JU0YpMbkeYpMBmxYDSTZean9Sl00XVSq5+Tuz3/L5aVS89MgzR35LCEY/ko0zEy2hL
         BxSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689706446; x=1692298446;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=u//A+GlhAlttSgwEt3gkumyAtdqzMVpBDzjR8GDGYAA=;
        b=j0obXPqoUEB+6wUNJSOIU2UoHxC/yCI8z55RSSwHeoUZUvkE6vk6zEhfRGzbiCuNg7
         lot9vFAqg3GE+lLQ2RDkweOYbtcwmHy+eQMVC6YncU77n77P7g5/ScbnvTKvIRGQZ6m8
         6XzW49lDDrZBbjoxXgbxdEhrcFYwzVZhOW3Uw9VtEU7j5br0tJBPv6tK55SDzaY6N66l
         f3EAJT7byjeC3LBjCRSOdxWLC2obvCcaCLyBAa2MF3OIEva0L5bvVliJrFdCnkx6WBN0
         8D83IZIp3QPmuZ+LjguJyB5EtxNCm+l/oBhnSGrJgnSVNZOsSsWWlE8qChiN55ic69dc
         EaFw==
X-Gm-Message-State: ABy/qLaTh1BVnnJr8yUr2WkKjuwD6znICnQZJZMg5lIrSsTbqBshO9lR
        etaGUyJ5TagToqLXmYMkCCzL3Q==
X-Google-Smtp-Source: APBJJlGXFOM+q8PW+p7H7DQdXaQwtsgl2vlU/eN/+0hkask5hluI60Ev0R+CAPak/xBgH7zgN5YpYA==
X-Received: by 2002:aa7:d991:0:b0:51d:e7b5:547d with SMTP id u17-20020aa7d991000000b0051de7b5547dmr655552eds.34.1689706446085;
        Tue, 18 Jul 2023 11:54:06 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id z11-20020aa7cf8b000000b0051df13f1d8fsm1608611edx.71.2023.07.18.11.54.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Jul 2023 11:54:05 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Paul Cercueil <paul@crapouillou.net>,
        Marek Vasut <marex@denx.de>, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, netdev@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH 0/3] dt-bindings: net: davicom,dm9000: convert to DT schema
Date:   Tue, 18 Jul 2023 20:53:54 +0200
Message-Id: <168970643389.118933.12401444775795846915.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230713152848.82752-1-krzysztof.kozlowski@linaro.org>
References: <20230713152848.82752-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Thu, 13 Jul 2023 17:28:45 +0200, Krzysztof Kozlowski wrote:
> Memory controller bindings have to be updated before we can convert
> davicom,dm9000 to DT schema.
> 
> Please take it via net-next.
> 
> Best regards,
> Krzysztof
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: memory-controllers: ingenic,nemc: reference peripheral properties
      https://git.kernel.org/krzk/linux-mem-ctrl/c/00e20f9ecde2c3131553de44ab832b486e8720a8
[2/3] dt-bindings: memory-controllers: reference TI GPMC peripheral properties
      https://git.kernel.org/krzk/linux-mem-ctrl/c/d9711707dc781ea6a397c5aa986ba3c05d1b875f
[3/3] dt-bindings: net: davicom,dm9000: convert to DT schema
      https://git.kernel.org/krzk/linux-mem-ctrl/c/b71da9105a81066f3a911beeb307751f904e00ce

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
