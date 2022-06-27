Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B668A55C731
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 14:53:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233708AbiF0JQN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 05:16:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233640AbiF0JQL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 05:16:11 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F9696144
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 02:16:08 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id r18so4163664edb.9
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 02:16:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=XF6Xg/Jnl8kt9uAg84iyOeyFwLxeYnsquIkcVeggWYM=;
        b=gVRDJ4vFWvupd6MuehuV0OUebq18DZ62ha0FXRq7baNiTZPWnsnrnfv2JiiMMXw0/P
         aq2YqANeuOuygVdGNwMoBPze1cocTo+jEUy6xQ5DpT4cIG2qYl/L1nIJ/yjesuGCuw1s
         Oqvbg+bwvwF8XQg6kgsv7gtx8NpfBkKXGUAggE7ls8xUdmJZ08WPcIond8WjnY6cfGqO
         5ijvAcc9LJBHhTZiQT4wN0WTFlnzlhyqzZIU+1R1WvRQf0ErqwiaZHrJU/Pi4xQXYY30
         Rx6pyW9FORlokQPDz8vRXHqCPLF2JH3YasCcRgUSaTKmSVRHmy9f6qQR9X7QBE33/qRN
         MTqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XF6Xg/Jnl8kt9uAg84iyOeyFwLxeYnsquIkcVeggWYM=;
        b=2akHBQ5c8KbM3kKZ+6blDrNnQwiYSNJ5QzbDJUGOjfDZdekVE8Nj0bv+S5LQm//HUe
         mIuITZ0vYao7ZijyVsqykYmviRtrq5y61bcX1Y59ZsSfULd6ZzjjqFXtDgUwcsK+sFmv
         1cVgf82kHQ+kh6g4Zn9xnV9+AWenkyey+2GjEcNSVjWunAjzrL2KKirUWYrePwUT8Ct/
         sEStqdbxiNuwZvty2/Yp9c0YaSqHIWTR9GEEjgxravEJXJMuFUomr3KUYjIwSiJD7gXp
         dB0h5N1Cic/PfdzQ632heLy6u+Q/dcZLsV9RzHZM+yG7wrUpDliawzj9eOdnyN6L+OeU
         PhcA==
X-Gm-Message-State: AJIora+mjoswo0OPt/otVwkSTxmNmrmJGN5KNhQVNW1aMY+pZ6PpwJ+f
        5bNDF+NfUGLVOG+Ex8ouNkqgUQ==
X-Google-Smtp-Source: AGRyM1s7wLhckQWmZ8cCf38jqWGxYIOfzLPfzkkajYqwvs940PONwvnPw2NxqZOSDMwfCTLrRTgmUA==
X-Received: by 2002:a05:6402:510a:b0:435:bcb8:756d with SMTP id m10-20020a056402510a00b00435bcb8756dmr14569504edd.277.1656321366851;
        Mon, 27 Jun 2022 02:16:06 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id gy10-20020a170906f24a00b006f3ef214e2csm4805395ejb.146.2022.06.27.02.16.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jun 2022 02:16:06 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     soc@kernel.org, linux-arm-kernel@lists.infradead.org,
        tony@atomide.com, linux-omap@vger.kernel.org, brgl@bgdev.pl,
        bcousson@baylibre.com, nsekhar@ti.com,
        linux-kernel@vger.kernel.org, krzysztof.kozlowski@linaro.org,
        Arnd Bergmann <arnd@arndb.de>,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        marc.murphy@sancloud.com, paul.barker@sancloud.com, arm@kernel.org,
        robh+dt@kernel.org, olof@lixom.net
Subject: Re: (subset) [PATCH 2/3] ARM: dts: ti: adjust whitespace around '='
Date:   Mon, 27 Jun 2022 11:15:42 +0200
Message-Id: <165632135504.81841.11888116255808550872.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220526204139.831895-2-krzysztof.kozlowski@linaro.org>
References: <20220526204139.831895-1-krzysztof.kozlowski@linaro.org> <20220526204139.831895-2-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 26 May 2022 22:41:37 +0200, Krzysztof Kozlowski wrote:
> Fix whitespace coding style: use single space instead of tabs or
> multiple spaces around '=' sign in property assignment.  No functional
> changes (same DTB).
> 
> 

Applied, thanks!

[2/3] ARM: dts: ti: adjust whitespace around '='
      https://git.kernel.org/krzk/linux/c/ae25b445914a754a74133021d39fc51261493ac8

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
