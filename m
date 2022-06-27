Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 073C555D0CE
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 15:08:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241057AbiF0UEO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 16:04:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240907AbiF0UEA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 16:04:00 -0400
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com [IPv6:2607:f8b0:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73A341C936
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 13:03:59 -0700 (PDT)
Received: by mail-oi1-x232.google.com with SMTP id w83so14362258oiw.1
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 13:03:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XNfcJEGE5VeJcaSJmH6wYZAst8nPhZtvYhkILSijpK0=;
        b=ndsdvUK4AAUrHcVZ1J4HwNh23+J9c+ZNsJPVvCmjyaXb51ODwpjv8b3VR/Swx+FGXS
         BceDBZbmpWbLX6qNIL1KmaAAF/+2x/uCkgO+lsu0UtYeL0ss6YQYWuB3tsR635rxs3Cf
         qJHkKgG8tdEVucAmbvXX9WiwsLoBSy9L3y7F8gg+2gZHPW/rUJCigvr9q9MU8lw052CP
         zX9jiFAIC5wXZxkWr+iE50rpXwX2aGiilm1EgiWSeKflJlxd0B0W4ujYYLbcKe0iHx9Q
         rWN9TuNuE2poon33dSpk+ZPfAPczGNvqPrt4uii2FhvRtWxOUiorN6bazddjkSaY1Sow
         G+5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XNfcJEGE5VeJcaSJmH6wYZAst8nPhZtvYhkILSijpK0=;
        b=Xobm4z3pLhGZu5wHEmdEJSP5h+5y4TD2vBfE8DnOBH05fi+3rgImTJ6vNinC9piH5A
         +Ec4Qn2/vD9DooiFtcoUXjrB+XChyORDJKz0l23CjMlIkGG+FRRsE6czmHRhxaZhAsh9
         D9wdFgKAWeioHotQvhY05USK6CKwckhzDy4c6gdYOBucYvGWYjLkUELEC7J/Lvbf0+wY
         A2t0rTdl2JwMhHdwdmZb6PbeCK2FvGSDbazhTSnT+Ioloys5CnXWpBjJfLs5iaOYp2Wi
         +GpxLGY52BNiuCsDzfgAo0SvBk9iMtnMHRvLWPufMqYXWGcbnFi+e2jAUnzv8L8cB0pb
         T1Mw==
X-Gm-Message-State: AJIora9fiS027eLv3H17Ip/oruerem/DbsS0WTzOZ5ptD2e6ksB1Wukv
        MrUnRKxF+e8wqS2QFWZnV43Es4kLdDTRog==
X-Google-Smtp-Source: AGRyM1t4SlUC4fU5SXrb81Y8uVsAPJ87BS0b0ICBHEeIvOz2iUFpcj0q1aNfLM1V902xikJ5hhVnjA==
X-Received: by 2002:a05:6808:f12:b0:32f:7be5:9d5a with SMTP id m18-20020a0568080f1200b0032f7be59d5amr12137113oiw.150.1656360238767;
        Mon, 27 Jun 2022 13:03:58 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id m16-20020a4a9510000000b0041bdf977c6dsm6428729ooi.31.2022.06.27.13.03.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jun 2022 13:03:58 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Andy Gross <agross@kernel.org>
Subject: Re: (subset) [PATCH] arm64: dts: qcom: sm8250: Disable camcc by default
Date:   Mon, 27 Jun 2022 15:03:09 -0500
Message-Id: <165636016349.3080661.7786445899115469360.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220518091943.734478-1-vladimir.zapolskiy@linaro.org>
References: <20220518091943.734478-1-vladimir.zapolskiy@linaro.org>
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

On Wed, 18 May 2022 12:19:43 +0300, Vladimir Zapolskiy wrote:
> At the moment there are no changes in SM8250 board files, which require
> camera clock controller to run, whenever it is needed for a particular
> board, the status of camcc device node will be changed in a board file.
> 
> 

Applied, thanks!

[1/1] arm64: dts: qcom: sm8250: Disable camcc by default
      commit: 1b3bfc4066c34da2f7808acf16344ac43722c2b7

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
