Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B332D472AF2
	for <lists+devicetree@lfdr.de>; Mon, 13 Dec 2021 12:11:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234467AbhLMLL4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Dec 2021 06:11:56 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:45940
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234158AbhLMLL4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 13 Dec 2021 06:11:56 -0500
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com [209.85.167.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 4FCAD40192
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 11:11:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1639393915;
        bh=TWX9z7B2SDW6pKVI7CzKeQKxNaS8eqsqW7IHGzb9lGc=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=hvGsRPHH6yOZKiGMzHS3xbYMRc5kYRHK5/hRcp/3Xwe0cL3McN+40i/wn8/+HxbOE
         CebspWW6O4QGfW1nsPmH6xCeESjiSQ1sccoJzkoI5tC5Acqy9SoPhmPb9P9QmCvkqu
         oBZGLfcVgN4Dc7VNccn8p4EUJvsnO1KxCIstgZz4whKi7TSZgUEg39pzgcZ87izhst
         kg7Fx0+BtdLUqo2L92sLfIB1RzKyny805+FOwMgqdJyoo1SUaEke86O3KpkT+7RNxm
         tFcx0CNy61/ALByRxuzg/0cC2HMuuOq32kVK7GB9OHAZy6sSS3OXioE66pAZeurQMJ
         iM4pCt2bqlaBg==
Received: by mail-lf1-f72.google.com with SMTP id c40-20020a05651223a800b004018e2f2512so7392457lfv.11
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 03:11:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=TWX9z7B2SDW6pKVI7CzKeQKxNaS8eqsqW7IHGzb9lGc=;
        b=6sxh7+TomDdPBM9eb3V23oc/QLNN0uQayYaVonEnyuhFW2mkk/o038d3VSt7GbvMy3
         1gO2l29fOIgH+PpIAoVN615erTicALNWRlWVpCLvFXDPHpT4ODK9wcKpGswYBstWX171
         FIlnCkxW6bfz8Tn++SiDke7sL//omM6YfuVNOZWyPbV1DE8oT01AMwLjOOI6XgR8DSqW
         7JJdwOKIXwF4Lr8w2WcRgcUBgucSqvnfE8k58ny6AG1d4F4IggWS/bxSYA19oZ5ZTes3
         mkSJbliD8eHyDJAeo9CFAesDwd55Gw9xtedof5KUCtLHGc4bky20vgnldG/EMlSMlwtH
         6dQg==
X-Gm-Message-State: AOAM530BS0DHIJjK0UI4gFb7lSB+z+tE1Ln+z2XlSXENuFdUX3fLwebg
        JjuVgf2tKlnEkheqAwDFmfSAyNOE/6DCqD41hcNOpYPHmNziXxxEIBSWnG+3grOq+5G8n4DKWg+
        +VOJ1Nxy9Ik9CFtFIdTudw3LXMYx9JBojT03nZTg=
X-Received: by 2002:a05:6512:1324:: with SMTP id x36mr28203964lfu.495.1639393912437;
        Mon, 13 Dec 2021 03:11:52 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwWh2zPqaJCAX9RF6Y9SF7zloH0bH/lomW9IUo3wlZ0O8nMKVcivVd3yVJlmERwPsJCKZYgAQ==
X-Received: by 2002:a05:6512:1324:: with SMTP id x36mr28203947lfu.495.1639393912237;
        Mon, 13 Dec 2021 03:11:52 -0800 (PST)
Received: from krzk-bin.lan (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id q19sm1381070lfa.266.2021.12.13.03.11.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Dec 2021 03:11:51 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Chanho Park <chanho61.park@samsung.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-samsung-soc@vger.kernel.org,
        Sam Protsenko <semen.protsenko@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: exynosautov9: convert serial_0 for USI
Date:   Mon, 13 Dec 2021 12:11:47 +0100
Message-Id: <163939390678.7492.11668777657755718143.b4-ty@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211208091853.8557-1-chanho61.park@samsung.com>
References: <CGME20211208092527epcas2p28f6688d5a2742c03cf474d8b2fa773cd@epcas2p2.samsung.com> <20211208091853.8557-1-chanho61.park@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 8 Dec 2021 18:18:53 +0900, Chanho Park wrote:
> According to USI v2 driver change[1], serial_0 node should be converted to
> use the USI node hierarchy. syscon_peric0 will be used as a syscon node
> to control the USI00_USI_SW_CONF register.
> This also changes the serial node name from uart@ to serial@.
> 
> [1]: https://lore.kernel.org/linux-samsung-soc/20211204195757.8600-2-semen.protsenko@linaro.org/
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: exynosautov9: convert serial_0 for USI
      commit: 7836149e155bd3c554571f135619f95932c841fc

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
