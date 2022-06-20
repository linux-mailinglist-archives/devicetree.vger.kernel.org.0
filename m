Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C00495524B8
	for <lists+devicetree@lfdr.de>; Mon, 20 Jun 2022 21:42:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240882AbiFTTmA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Jun 2022 15:42:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51950 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244941AbiFTTl4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Jun 2022 15:41:56 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1FEF71C122
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 12:41:54 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id v1so23032262ejg.13
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 12:41:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=fCTXIeOE8EYyJX+yccprUNjJQJBvAsANz2KSm73ZYi0=;
        b=AdWOGV6w3OmqRe1jktiA7QUN8Mte+Krh7B59LBppkiRmdg/qUkT/VEnSKLNtQN77N1
         /2ONMOc1UOD5nIIKWa6c6hNcZOB1fsr4GYQiMFossAGqvCuNCiIEmrGA9LpgY34jhVUM
         30ql9Z1rW0s/0HUcIwq5HyCGa8S5j3jxZoJIXJZ/injvG8xilbC2s9LQWElscPyAVUDU
         syBWjLw8YB/S0aV+VrAZvBrrI8O+i6vXhTlwzU33hz8dSw6k7Zq93vz/7RBscJmWd3e6
         QjpYFq2X51rWyAMYW+K4QMeeMJMBhHlv+4oWBcD2HHcnvikTKTHOujtG6iV6GjZtNLOF
         J3QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fCTXIeOE8EYyJX+yccprUNjJQJBvAsANz2KSm73ZYi0=;
        b=OPIgL8807kf4I9m8P32pIMUE0L4B/VRxVuksoaJyCtMxx7i21I42xIoKPMTPP9+S59
         GOcQgzVV2lMBzb2xDm/aMsfmdEbSUqJySgl+JO9ZP5L0KKNdTXiYTbFqMNSwOEqebBcE
         gY16JKTlw/kQmfCXvmUeeFa+uOVCHRbn53ystQYsaQJdr0971OAJvyOutGeOPbx+N9ZD
         Q09hAXjr596Hh4HvbOGz9/y9uCEQIM+66/yUgqT31vxE89qIdgXhu7BeflvdZ9y9ssHn
         bd1R3ZlYE4UV+m/dKW0qQtXnPCGOuzW6DUC6iW0v+o7mltmcjAkgPgc14/Da1PO9q8gK
         hIig==
X-Gm-Message-State: AJIora9bj0s1qsLaw7cXg7e1CCtfmbqPr7mSKNikAM88kTBNk6QHcATt
        7jXjiRCkfxUf2GgnbWFUW4x/VQ==
X-Google-Smtp-Source: AGRyM1ueHJ7b3vXZ5WxPitGOeO7WLvd6p7/za5Ndb6bVOKW/fPqsuJ47ThBLkBxZFFmvkh+fqRKIYg==
X-Received: by 2002:a17:907:8a08:b0:711:d26d:71d with SMTP id sc8-20020a1709078a0800b00711d26d071dmr22642482ejc.622.1655754112672;
        Mon, 20 Jun 2022 12:41:52 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id o18-20020a056402439200b0042fbc23bfcesm11448549edc.46.2022.06.20.12.41.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jun 2022 12:41:52 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     linux-kernel@vger.kernel.org, srinivas.kandagatla@linaro.org,
        bjorn.andersson@linaro.org, agross@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        krzysztof.kozlowski@linaro.org
Subject: Re: (subset) [PATCH 1/6] dt-bindings: nvmem: qfprom: add IPQ8064 and SDM630 compatibles
Date:   Mon, 20 Jun 2022 21:41:45 +0200
Message-Id: <165575403865.144830.16144353813959937892.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220505113802.243301-1-krzysztof.kozlowski@linaro.org>
References: <20220505113802.243301-1-krzysztof.kozlowski@linaro.org>
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

On Thu, 5 May 2022 13:37:57 +0200, Krzysztof Kozlowski wrote:
> Document compatibles for QFPROM used on IPQ8064 and SDM630.  They are
> compatible with generic QFPROM fallback.
> 
> 

Applied, thanks!

[1/6] dt-bindings: nvmem: qfprom: add IPQ8064 and SDM630 compatibles
      https://git.kernel.org/krzk/linux-dt/c/7e03a2c01ca378a52ac33c288bdfddb245ee2b7a

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
