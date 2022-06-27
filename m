Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AA87555CE13
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 15:04:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233082AbiF0JQO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 05:16:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37696 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233565AbiF0JQJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 05:16:09 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D4676141
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 02:16:07 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id cw10so17796156ejb.3
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 02:16:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=9RjJmpdi75XU5nQH3QpJfABUbyHeqC/FsIwtMKjT65A=;
        b=XecNMchFJE25hOmqMMMB1a95gDdS++CB2DUXhD2k9NoUZ1xgQyJJPo/wAolnwQ4iRL
         I2sqJNzTYY3ZcUrr0rsdwzmF49C50+wZO5HCSaXfn4/wPxeoDzEVNiT2lzvSEBzECgXc
         s3SvZfl8voiZuSfrqXL+5CiUMx7p3vefsmpI7kuiL/vEB6H0v0/lZcRtUOzzOg60Jkzy
         kIkGxPUatVGgA7NLJTPZidWDTHaiZxgmUJ4pqXEusTr8zgihHFO5hnferK13xveh85zp
         G+yePO97nV5mZWLZ7zFtGWuxUTjIPqVXj1dAtd1gHVYi3KUYWW3XvN42gjQ9L4TkCQlX
         ocAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9RjJmpdi75XU5nQH3QpJfABUbyHeqC/FsIwtMKjT65A=;
        b=SCgTzjJx1TbEl/J5vUXzt6ujxUy3M8UiXqC5hvbMBHrlCPXNG9qjZco2SQD6hJz4xN
         b2eu9xvADcEROAAdMwJQvDDd9avABpQ6GRw/HsKJ1t+ktuJVmkU66MoC8B+n0ocsG4jn
         ZWHdZH8+zHE7788xg10XHJyprZw1/ywcL+palNf6iFwyi4MDTgehuAQX4k6YlMxL8kRv
         3VXNlWqponT04axIyPqVptIDvYKsd3uP3D4ZBvx66rF0K5Z/RYJY/mfsGJAJwVhov/+f
         EdaNDj0HebZH5qq3AFf/IHq2mww2rpb/et9guedgNAXWbV91O0KKvuJaaUGt3v5aRVNi
         P8vw==
X-Gm-Message-State: AJIora9xe033iXyLDOG6sI2APFVOUrRyRUmTO+Qe3OYGaJ6Ek53pipfB
        7QOTmYJd2sa3isK1+zVf/oK8bA==
X-Google-Smtp-Source: AGRyM1vTcV6WemKEqD1IEIBFFEkpIMDDsqFPThnRxnBMbopZ9CxTvHpeieDyOhaz88+0CloU87boAg==
X-Received: by 2002:a17:906:9b86:b0:6f8:24e7:af7d with SMTP id dd6-20020a1709069b8600b006f824e7af7dmr11933823ejc.295.1656321365593;
        Mon, 27 Jun 2022 02:16:05 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id gy10-20020a170906f24a00b006f3ef214e2csm4805395ejb.146.2022.06.27.02.16.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jun 2022 02:16:05 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     soc@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, agross@kernel.org,
        krzysztof.kozlowski@linaro.org, Arnd Bergmann <arnd@arndb.de>,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        arm@kernel.org, robh+dt@kernel.org, olof@lixom.net,
        bjorn.andersson@linaro.org
Subject: Re: (subset) [PATCH 2/2] ARM: dts: qcom: adjust whitespace around '='
Date:   Mon, 27 Jun 2022 11:15:41 +0200
Message-Id: <165632135503.81841.10181896314870862528.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220526204248.832139-2-krzysztof.kozlowski@linaro.org>
References: <20220526204248.832139-1-krzysztof.kozlowski@linaro.org> <20220526204248.832139-2-krzysztof.kozlowski@linaro.org>
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

On Thu, 26 May 2022 22:42:48 +0200, Krzysztof Kozlowski wrote:
> Fix whitespace coding style: use single space instead of tabs or
> multiple spaces around '=' sign in property assignment.  No functional
> changes (same DTB).
> 
> 

Applied, thanks!

[2/2] ARM: dts: qcom: adjust whitespace around '='
      https://git.kernel.org/krzk/linux/c/bc98d95e00ebc708dc4e29d340a11e06aa3e9d2e

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
