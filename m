Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3D6E467C882
	for <lists+devicetree@lfdr.de>; Thu, 26 Jan 2023 11:25:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237131AbjAZKZy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Jan 2023 05:25:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49664 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237091AbjAZKZu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Jan 2023 05:25:50 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BB061115D
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 02:25:48 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id z5so1263076wrt.6
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 02:25:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=U/94PqYgPHWGOImoRxKRiH4IHfRW9uDk/cP1RssrHas=;
        b=QqaV9TZnxaSBVJiBvHJYig4lzjj9eQti0DYO66mfDCkITk8dGQ/VoZ60LhhLyJPjRp
         gqd35uzsA/5tH4OuBHK0iqegrbCIHUc9atnyMOomgMGHEPKfyHWUDpAl6W3HHYMM4LFH
         nUPmHcHH213wJAWdYtdBAnsmwGmCqaO7UDAIGOGUsk8v4FsR0tW2l12txpS9Ehma0j94
         6rlRfbAYpp36OyNQSAaPfOi82VJL16VsnSnFdZNw+IiptmTMlsTEg0/Q4VqmumudcT32
         k/jG2AtazCqWbUNA8DNGpFPUIB7rgn9VLohJk6hbjTfM2WSSCYYq29LlHiJW92F3o0uu
         yqyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U/94PqYgPHWGOImoRxKRiH4IHfRW9uDk/cP1RssrHas=;
        b=CBUaEAe2/wPeRNboV1h6+maADbM445Z0Hg5ZKDYf6chPvE6Y20/JLgV+R0NprpVOWf
         BwnF5FVAgqcF/yNGzKAeGdGW31y3tJeBeGy64EhcDDnzv3A0NBIRcbTRVme+7U1bcxML
         hv+xtOXyNLyo534DoDoZYuD/fh7XKhB0zYRTa76OJY9v+qUw9pDN54aRl1sJdEBZHLwM
         rbnCnmUVR41e1kFrsyIj9Yn8n5ED+ClILCzZDLVo5qdrr6TSK290LPjBVC/QDsMQJT2Q
         AvK9trlU/kXabTjcW7kSCrQBwDNzve9m3iUU7bMAQT8ntbm0W46OAGeCzb3+G6QVbaV5
         SA8Q==
X-Gm-Message-State: AO0yUKXjv1FpcyW4I9M+7mIR8Mje5UGDf32kdyIxWUqwiQnSrMj2oItL
        o5SX1lC/a/g6NKFJ0OrcNn4YPw==
X-Google-Smtp-Source: AK7set9dKYqi9MWEV0YyErYOSyX2VYkqnLwcd43TsDub8iLQcXKb4BrQUoOeyle/MMBmtswwVrBVJg==
X-Received: by 2002:adf:dd12:0:b0:2bf:afdf:13db with SMTP id a18-20020adfdd12000000b002bfafdf13dbmr8046113wrm.47.1674728746829;
        Thu, 26 Jan 2023 02:25:46 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id t8-20020a5d6908000000b002bc7e5a1171sm886514wru.116.2023.01.26.02.25.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jan 2023 02:25:46 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] ARM: dts: dm814x: align UART node name with bindings
Date:   Thu, 26 Jan 2023 11:25:31 +0100
Message-Id: <167472873010.13092.11648343089928485949.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230123151536.369623-1-krzysztof.kozlowski@linaro.org>
References: <20230123151536.369623-1-krzysztof.kozlowski@linaro.org>
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

On Mon, 23 Jan 2023 16:15:36 +0100, Krzysztof Kozlowski wrote:
> Bindings expect UART/serial node names to be "serial".
> 
> 

Applied, thanks!

[1/1] ARM: dts: dm814x: align UART node name with bindings
      https://git.kernel.org/krzk/linux-dt/c/0f36161a9a140b1d30bf0935e4166fcbf8c8b847

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
