Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EBCA0228A73
	for <lists+devicetree@lfdr.de>; Tue, 21 Jul 2020 23:14:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731130AbgGUVOu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Jul 2020 17:14:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32938 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730304AbgGUVOu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Jul 2020 17:14:50 -0400
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com [IPv6:2607:f8b0:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1D3EC0619DB
        for <devicetree@vger.kernel.org>; Tue, 21 Jul 2020 14:14:49 -0700 (PDT)
Received: by mail-pf1-x441.google.com with SMTP id t11so41236pfq.11
        for <devicetree@vger.kernel.org>; Tue, 21 Jul 2020 14:14:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=oSUWq982rBlWRI7hOTohIn18y5KqsT4lbUPrCubS9rQ=;
        b=Qt3KHO5lvvUtQ8imVFOJ2VhAHOnvuWrMPARwSJIhErVMtjHNHMP5M58cIfz/ydEO3b
         N8xJ6iroaX2XUBw+nW75h1JxrT0xcFO4rM4GGxT7PAtvL8GWT+6Yac0aO1mgkDSn7+YX
         redNFf1wwK4hKomJtf+QYgF8/WFKRQFzX0RlPrYYMx9X1PdVztVvmiV38Zh2VpIw7NGy
         nREPu12wtWIThP59O6Tza0z4xgsHIsButqmIlRK7WclqPsQCRBL3SZYFc0Y++V59JbUb
         CUQEx5/xboqbc242yoVwbC6nDqv0hBljzLPz9BcwTSKLY/G+4AhD62tWPRwhPfYGFONa
         hKVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=oSUWq982rBlWRI7hOTohIn18y5KqsT4lbUPrCubS9rQ=;
        b=KgYucuptm8uv7CIDBu4f7QHMEXUAmgERCJsEHvyraKDByVsA+DduViUd6tOoP4swxJ
         NMcx+yafayIHHK6sJudz99KZOVTU4PJhujUeD+ooQvoPRI+ZtIWhtJyh5L7oAkMiDHZD
         kIBYm6QZ+3JyjleNXi09M5jsbaerNxqYXZknmBUctZxTeF+CQWAivzzl+guyp4ROa0UJ
         sNN+QUbxwAdKkdu0VOTBycHAb1Gtm3PLrQ3ZEo85NxvW/6D5rPQgOZJUKrb1MZ2yIvc9
         mXr9AfY7yy1RrzMDyEw8Ak5Y453SSDRW+nwkjZLx7Ia5mNfYIWJzRPbFjs7yIt6n362Y
         wKcA==
X-Gm-Message-State: AOAM530gOMZwXXZuzQcjh+3OWgAzlrdiJ3EgtSql6ULJTfK1PHWbDQN2
        0bszvgxlSmQ7n8xCLQvs3Z4z5A==
X-Google-Smtp-Source: ABdhPJyQntzppnYI6sfe3fXSIfegwAdBnN0ZD8OF2gPFZ9fMv/PTK9G75ha/vG9as5mIrSCMEF0NMg==
X-Received: by 2002:a62:2b85:: with SMTP id r127mr24357616pfr.239.1595366089357;
        Tue, 21 Jul 2020 14:14:49 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id cv7sm3966952pjb.9.2020.07.21.14.14.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jul 2020 14:14:48 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        Christian Hewitt <christianshewitt@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: meson: update spifc node name on Khadas VIM3/VIM3L
Date:   Tue, 21 Jul 2020 14:14:44 -0700
Message-Id: <159536607959.30777.2083924894013034325.b4-ty@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200718054505.4165-1-christianshewitt@gmail.com>
References: <20200718054505.4165-1-christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 18 Jul 2020 05:45:05 +0000, Christian Hewitt wrote:
> The VIM3/VIM3L Boards use w25q128 not w25q32 - this is a cosmetic change
> only - the device probes fine with the current device-tree.

Applied, thanks!

[1/1] arm64: dts: meson: update spifc node name on Khadas VIM3/VIM3L
      commit: d57c69ca6d4ab890e8edac5c8e10c7c2b54d500c

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>
