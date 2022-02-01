Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A2EAA4A5626
	for <lists+devicetree@lfdr.de>; Tue,  1 Feb 2022 06:20:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233599AbiBAFUN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Feb 2022 00:20:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42122 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233639AbiBAFUM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Feb 2022 00:20:12 -0500
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com [IPv6:2607:f8b0:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59B8EC06173B
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 21:20:12 -0800 (PST)
Received: by mail-ot1-x330.google.com with SMTP id b12-20020a9d754c000000b0059eb935359eso15171897otl.8
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 21:20:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9zRd1V2ISXwphTRlIcVBuHuJWr0vd9KojjKRN36MEAI=;
        b=Eleh1fLCdYSRw4x0uDLRVg2ZmQ3jSO8KSPU7SAelvmamrvJVOry2xUd7y3ko8mjcdZ
         +oREGEaNWHqKKFR8eeWgJJLK6/VlorbNgPZIuUAyxiqOnbJ9IR2kAsnd4KGT9MwLm4zo
         JTjIW0h1eMxu3uq9AdhCB7B8mlvLpmY6SUBa1BtrIC66EonLHzeb1/lo7Bq8OgdfIfc5
         JUtFLaoB5mHWmPN/8caP8SKTl+EQF8WuOnkCL7lj7/dx738XqzxW50PdyrKZwjCOl3pc
         XT5lo9v8AX/E/JhZEv5nJatkfp7xNFcAyWaw1A0QR2giCWJkDr/vGf2hkYL/wmcNMxPV
         /S6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9zRd1V2ISXwphTRlIcVBuHuJWr0vd9KojjKRN36MEAI=;
        b=f10K9r+dfxXcL+JIKQ6FyTs0QePEnQ71R8k3vOKQEWDU4rVxaOH7Hm99yQw62Xhs1w
         3ZWUunBseNa0Nh2++5dAivWOqA/HispUQ3jalirBJlNNJzhRIDu0YPnjI+az+tjJbuWh
         Nr+NalAAIfWIwEoGLdk/u6744vMlrk1nSkEMjv1mvsGCGkvPrBCbyCGQGBzwmfpFxSnl
         RmKfpls069o6bVWZA3hjZimBBQTbnWr6wrAc6IgIZuA0zwgzXp6w3Elo+dkWa1WfILoL
         F4ltybYmFrFysoa/ovyNAoG6Ux145MTC/5AciSh6Q6vYQVQZ/3tPbL/G7zUhIcrNyiEF
         sZDw==
X-Gm-Message-State: AOAM532DhDSujq4ZMUqpxIehvgOmNtODtcy28yGNDgMMcRYbQV9ihepA
        ZgOymcNCdBuEdtB2jl4HjfOvjA==
X-Google-Smtp-Source: ABdhPJxXrkcDeP6zBtLfkOhZMTeiCTFxKhGi54ttguawdZi0hau2mMK9Pprgj9v/jB4lHvJC0neGsQ==
X-Received: by 2002:a05:6830:555:: with SMTP id l21mr13357720otb.54.1643692811788;
        Mon, 31 Jan 2022 21:20:11 -0800 (PST)
Received: from builder.lan ([2600:1700:a0:3dc8:3697:f6ff:fe85:aac9])
        by smtp.gmail.com with ESMTPSA id u3sm8193107ooh.19.2022.01.31.21.20.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jan 2022 21:20:11 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Ben Wolsieffer <benwolsieffer@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
        trivial@kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/1] ARM: dts: qcom-apq8060-dragonboard: fix typo in eMMC
Date:   Mon, 31 Jan 2022 23:19:21 -0600
Message-Id: <164369277345.3095904.16020829127932162038.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220127025358.2202977-1-benwolsieffer@gmail.com>
References: <20220127025358.2202977-1-benwolsieffer@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 26 Jan 2022 21:53:58 -0500, Ben Wolsieffer wrote:
> eMMC was misspelled as eMMMC.
> 
> 

Applied, thanks!

[1/1] ARM: dts: qcom-apq8060-dragonboard: fix typo in eMMC
      commit: 206006cf20b3ccec65b11d2a83876cc6006b6a16

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
