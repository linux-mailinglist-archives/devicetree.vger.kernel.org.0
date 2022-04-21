Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6E64050A268
	for <lists+devicetree@lfdr.de>; Thu, 21 Apr 2022 16:29:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1389346AbiDUObF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Apr 2022 10:31:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36190 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1389351AbiDUOaY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Apr 2022 10:30:24 -0400
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com [IPv6:2607:f8b0:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A50963DDC8
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 07:27:32 -0700 (PDT)
Received: by mail-oi1-x22b.google.com with SMTP id a10so5769088oif.9
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 07:27:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Y+YeVpF+XXNXv6igumvGpGrAaQhmDe2XduTo8xGKCNM=;
        b=Xi2WxW6CvV2f6mBJr9C2k7VR0F64eAH9Ts8vrRc0czw4dlLBaNEPvimjsGsQvuivb/
         v1bs5ZqhhY1vPHHBS3XieOmtvYrhNaDep9OFdHgfOeiK6eQdOc2dBbPHcEFV4K0UmjCW
         sVHpy12E8ZT8+CjjRNdOz/3jvo00AASP3Qa5SJ0FNCnvSoZWFx+P8wBfWMegahrerfii
         fm1z6tO1eNA2VhlUQmPYgesQQsNicvjjTgx3Jr0QYEbCMkuBOTGYsV9+qxkaPelI8Ktv
         IsVqZMlNB+JgTB0ZbfwB1foUk5xtCaebqgk7egEY0x4hiK/ENSfjUp9lKIXDkiTgJuIf
         tkFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Y+YeVpF+XXNXv6igumvGpGrAaQhmDe2XduTo8xGKCNM=;
        b=j3sxVXyBVu6a8My2TpclhCvHcnDdKzdhRVrZHZ3sPNMtk0kPX2Ma21SHDYnez9h8VX
         xbgxg3XImWT0a84i1lYcnCTwv3qLGcWKSxqoKc13CwmywDZpiYzds4btHKmxGsxHKj/E
         9iJMJwa4Z8NRSO+a5E2aJhcctnPGJFHgNYmESL66eO1Kp6Kwr/MzXljzrpiOxlhe0PgQ
         W79EurC/L5V9wOj7SfghLHjE24y0Toq2/ar4VtPXIcwomKNAg8a0GCZ2NR+vKZjGuXzE
         ezyWKczWXNzfWmKwOOhkIW35aOHXIRHBRoFyq4dAXIT+0XRZPrJ60yCQGhuvBR8aH37q
         0LFg==
X-Gm-Message-State: AOAM530LVThMaBvK9YTbjUp4cPdAPUrkKSoB1m1861G7cZ7PcCF75yCt
        i1XukETvUdmq9ubyK+eCHp/L2DhB1svB3WuC
X-Google-Smtp-Source: ABdhPJyAWDnEf73EJQ2xtQ/tjqK8JJQHB26dASCBxTB3qthtJ1S/h5Slz6yOHwSC2UdCbKFEyqqrNg==
X-Received: by 2002:aca:b505:0:b0:322:a524:8859 with SMTP id e5-20020acab505000000b00322a5248859mr4133243oif.2.1650551252015;
        Thu, 21 Apr 2022 07:27:32 -0700 (PDT)
Received: from builder.lan ([2600:1700:a0:3dc8:3697:f6ff:fe85:aac9])
        by smtp.gmail.com with ESMTPSA id s14-20020a0568302a8e00b006054e841915sm4296295otu.73.2022.04.21.07.27.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Apr 2022 07:27:31 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Mukesh Savaliya <msavaliy@codeaurora.org>,
        Kuldeep Singh <singh.kuldeep87k@gmail.com>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Akash Asthana <akashast@codeaurora.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: (subset) [PATCH v2 4/4] dt-bindings: qcom: geni-se: Update UART schema reference
Date:   Thu, 21 Apr 2022 09:27:07 -0500
Message-Id: <165055095990.2574292.9008815958206587881.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220404182938.29492-5-singh.kuldeep87k@gmail.com>
References: <20220404182938.29492-1-singh.kuldeep87k@gmail.com> <20220404182938.29492-5-singh.kuldeep87k@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 4 Apr 2022 23:59:37 +0530, Kuldeep Singh wrote:
> We now have geni based QUP UART controller individual binding, update
> reference in parent schema and remove properties from common wrapper.
> 
> With removal of last child node schema, remove common properties of all
> the controllers as they have become obsolete now.
> 
> 
> [...]

Applied, thanks!

[4/4] dt-bindings: qcom: geni-se: Update UART schema reference
      commit: 6579f39290bf056442850094b8f4b95163c17996

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
