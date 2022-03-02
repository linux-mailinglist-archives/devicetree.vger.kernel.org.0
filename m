Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0B1694CAF32
	for <lists+devicetree@lfdr.de>; Wed,  2 Mar 2022 20:56:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242620AbiCBT5V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Mar 2022 14:57:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48706 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242676AbiCBT5S (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Mar 2022 14:57:18 -0500
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E646FD9959
        for <devicetree@vger.kernel.org>; Wed,  2 Mar 2022 11:56:32 -0800 (PST)
Received: by mail-pl1-x635.google.com with SMTP id s1so2483913plg.12
        for <devicetree@vger.kernel.org>; Wed, 02 Mar 2022 11:56:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=CWC6CjhKIR5QPsl3czUa1+r5EgkVSh0pl2OgLlZsLkE=;
        b=bZWOKYcYjBohNlYL+dSVXWf5eDaIfaHzXf8/RHn7EkS9sTV39m6wtx1K0m+b1sJFaS
         4NVhTo/BkQl6PkShoKVyo1rFA4BIPYl1E6xkqI/CIBSLVsF3ojU/opihHIWJO4gBWROM
         mUaLEn4ftuv+MJ6EMatCxQT35i33UUXr+cdciajbP0IeoxxaOrRj0oIcw7jRsM3YDccy
         OEPENRz3KuBDDHd9l5JP7J6jV7+25i2922He9PRFkh11kL5FCO03D8ANWfWHws6mHEs0
         RVVZlvZkIoT3z4CWpMv0eaQap5woeLgJnug6sO77gHig7e0gWRGexmn97Bck/AIBhnmY
         L70w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=CWC6CjhKIR5QPsl3czUa1+r5EgkVSh0pl2OgLlZsLkE=;
        b=NWxdoglA5KVCLdMnHlqjWiLNNwKTGH/GBe177X3WFKZOnoWLL8/MQf6AG0p9L6HOcg
         odD+KVYbXN3TpQBiDnJXmZc1sW2zyllfOQD5J+e42N2rcVmwVSF77Femm/Puys17fpiu
         exacblVIESBE/UNnXrHS4t+D1htIUgye0+JGmOTQp80qMD1fr+Z1eUA8uLXQcMoq3mIW
         RmGn+hEjXGl3n36Od6T/M/yFIvArewQQvp/WuIOOyNX8pCLDWNxQfs0M/UnKK6LK/qbb
         FJXEyp5xpC3s8IBaCmiYFBzOo9RQFobynswr2nDul+SEndunYhXy+lfRrvjSKTWMk8v7
         Anyw==
X-Gm-Message-State: AOAM533/dUDTUEHktsHQG/SjCDA1Rp7olNZMcsfF+PvWOHzlkJCAZlQm
        TNBMPs5N03xYJmqMNeSWOtUhTCdy8Ne6/w==
X-Google-Smtp-Source: ABdhPJxMMHIwBctC3bNbdMAJffHE4f03N6w1ND8f7XFoeJSCeDus7QjCWvCtxkhKMkaWpFIwO4tZuQ==
X-Received: by 2002:a17:902:7204:b0:14f:b325:7658 with SMTP id ba4-20020a170902720400b0014fb3257658mr32259190plb.110.1646250992419;
        Wed, 02 Mar 2022 11:56:32 -0800 (PST)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id h13-20020a056a00230d00b004f427ffd485sm8124548pfh.143.2022.03.02.11.56.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Mar 2022 11:56:32 -0800 (PST)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Shunzhou Jiang <shunzhou.jiang@amlogic.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Shunzhou Jiang <shunzhou.jiang@amlogic.com>
Subject: Re: [PATCH V5 2/2] soc: s4: Add support for power domains controller
In-Reply-To: <20220302065540.16031-3-shunzhou.jiang@amlogic.com>
References: <20220302065540.16031-1-shunzhou.jiang@amlogic.com>
 <20220302065540.16031-3-shunzhou.jiang@amlogic.com>
Date:   Wed, 02 Mar 2022 11:56:31 -0800
Message-ID: <7hilswgmc0.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Shuzhou,

Shunzhou Jiang <shunzhou.jiang@amlogic.com> writes:

> Add support s4 Power controller. In s4, power control
> registers are in secure domain, and should be accessed by smc.
>
> Signed-off-by: Shunzhou Jiang <shunzhou.jiang@amlogic.com>

Reviewed-by: Kevin Hilman <khilman@baylibre.com>

Please investigate what is going on with your mailer.  You sent 6 copies
of the identical V5 series yesterday and 8 more copies of exactly the
same thing today.

You also did not summarize the changes in V5 from the previous
versions (e.g. removing some of the always-on domains.)

Please collect the acks/reviews you've received and send V6 and
summarize in the cover letter the changes made from pervious versions.
Also please send a single copy of the V6 series. :)

Kevin



