Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A474D579235
	for <lists+devicetree@lfdr.de>; Tue, 19 Jul 2022 06:49:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235693AbiGSEsY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Jul 2022 00:48:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47970 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235670AbiGSEsU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Jul 2022 00:48:20 -0400
Received: from mail-oa1-x29.google.com (mail-oa1-x29.google.com [IPv6:2001:4860:4864:20::29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 211FB3AE7B
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 21:48:18 -0700 (PDT)
Received: by mail-oa1-x29.google.com with SMTP id 586e51a60fabf-10d7170b2fcso679774fac.3
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 21:48:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=iXJWYZLkO+SvXeTWIQEIf//0QcplWymJUBmKeZNpm1w=;
        b=nwAQH3FLQD/xY/T+PyImA5LRpyRq3qd/Rpo3uqTYfUVNxOccQjLICzCplHf7E+AKG5
         Kpc+8h31EhfmqCz608H3NzCMnj60D1dMxIydegtI44f8QtJ6K7jD90SHxcJyqY0QbWZb
         ayR95QfDu4EPFM5CdhNx2Q2C0yjAjaqAg5wxq+mOPIqsQQbjD4K6U6DTiXrNmbh7ABml
         3Z9O3RCc4S1GI5t7jPX0fZfbJgQvTzhZjNZ+LtLA0b79NEu7uv/UV/kqzx/fhefH+2NX
         gDkT1NPjO3eFkx8vggex4g3QuqSibp70KpOe+mqXs5sJV90WppYaU/9yEzyuWmtoVu0f
         zU6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=iXJWYZLkO+SvXeTWIQEIf//0QcplWymJUBmKeZNpm1w=;
        b=PAdH3iD9+HAQSaMNcDFieVrmj/6l+Vs+mG8yfNCEAJP8Hqav17JUgzzGqLBL+7i/ac
         ZD4sDYtOp9Nulnb9WKUJcqryMZc7Cy6C94BxxarbM7Z36JYNF9+SNiZuhLerS9iu5V7G
         IQVB/dbPFTv4LvS+/9Tx8EjQ+YijkBZIbmMBJ+YCfDzm3n1o1qBCVlNLQWMQjYgjmghB
         sVNTEByZt7mGydEhm8zO58iUw5lUkItQH/O+P6FgqeNyod1HjTjUiSYy8WErlpdRfvIH
         g+zi8m8WhgzKxquuy7YR71YDM86rVA90GEzB/Tc03Y4kFDg4FJ9COeU+SZ1JfPQfL4Wb
         XzrA==
X-Gm-Message-State: AJIora//gYL8vqyyXoKlo3y8izSOEbYwoC3cuOQnRj7OPUHKt9nptvHD
        g8cwhz8nkzqOoqsz+nV+jWcAKA==
X-Google-Smtp-Source: AGRyM1vF8QmjQjo9HaStMOW10dsvV7LQekWGhlLbW41sNyLLVX8PzNebKHCqdXTXP+HpQI/uXW10HQ==
X-Received: by 2002:a05:6870:e615:b0:100:bbc4:ac92 with SMTP id q21-20020a056870e61500b00100bbc4ac92mr18813806oag.211.1658206097858;
        Mon, 18 Jul 2022 21:48:17 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id w9-20020a9d70c9000000b0061c9bbac1f9sm2803209otj.16.2022.07.18.21.48.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Jul 2022 21:48:17 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     stephan.gerhold@kernkonzept.com
Cc:     robh+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, stephan@gerhold.net,
        Andy Gross <agross@kernel.org>, devicetree@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Subject: Re: (subset) [PATCH 0/8] soc: qcom: Add compatibles for MSM8909
Date:   Mon, 18 Jul 2022 23:48:05 -0500
Message-Id: <165820608071.1955453.15417181373836480137.b4-ty@linaro.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220705143523.3390944-1-stephan.gerhold@kernkonzept.com>
References: <20220705143523.3390944-1-stephan.gerhold@kernkonzept.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 5 Jul 2022 16:35:15 +0200, Stephan Gerhold wrote:
> A set of tiny patches adding compatibles for MSM8909 in Qualcomm SoC
> drivers. Most of them are even just aliases for existing code (usually
> MSM8916 since it is very similar).
> 
> Stephan Gerhold (8):
>   dt-bindings: soc: qcom: smd-rpm: Add MSM8909
>   soc: qcom: smd-rpm: Add compatible for MSM8909
>   dt-bindings: power: qcom-rpmpd: Add MSM8909 power domains
>   soc: qcom: rpmpd: Add compatible for MSM8909
>   dt-bindings: soc: qcom: spm: Add MSM8909 CPU compatible
>   soc: qcom: spm: Add CPU data for MSM8909
>   dt-bindings: arm: cpus: Document "qcom,msm8909-smp" enable-method
>   ARM: mach-qcom: Add support for MSM8909
> 
> [...]

Applied, thanks!

[7/8] dt-bindings: arm: cpus: Document "qcom,msm8909-smp" enable-method
      commit: df71736be882fbe5317014348791123984b352f9
[8/8] ARM: mach-qcom: Add support for MSM8909
      commit: 2bc7d3e08ec76f5ea88c552ae72ed8ea9bbdcc01

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
