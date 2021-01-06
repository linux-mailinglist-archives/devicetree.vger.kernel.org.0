Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8FF6A2EB775
	for <lists+devicetree@lfdr.de>; Wed,  6 Jan 2021 02:11:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725778AbhAFBKu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Jan 2021 20:10:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44580 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725768AbhAFBKu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Jan 2021 20:10:50 -0500
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com [IPv6:2607:f8b0:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C4B1C061574
        for <devicetree@vger.kernel.org>; Tue,  5 Jan 2021 17:10:10 -0800 (PST)
Received: by mail-pg1-x52d.google.com with SMTP id c132so1082323pga.3
        for <devicetree@vger.kernel.org>; Tue, 05 Jan 2021 17:10:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=EVV14Sx/rRBZoKkosKcXlX/i5q+in+q9E+tyOh5/Nio=;
        b=uI5y3hWn+xf05uPZxataGUYKq7siR0kP7pJUBR32rqLBjIZ7HTkGwZsujtwE8QvLRU
         Hc37BwQ3pzSNbwNsuevbScn87JN+Mk9TcZ8VkCa2DcFc6oHLQpmy8bzfUJ5bOvoopi77
         Tz9WXrsiClQhCFUE4WyPRFfWhpATQQYfo6LrfcBqZDFwNAdLmW0s9gY6XSHXQhkfYW6S
         ZQYbdrt2Rq5QcptaIpZ2NlMarVNVDpIjDglvgrepSPMP01rtiUGsyK14T7CCY+yBIzqP
         NTl6ESiZx+8kA9mRgPx2fFF2HAhhEw1qsTlkmsg/HlytdijDyRMUJ2M+ihyMnkHy2aYR
         MoCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=EVV14Sx/rRBZoKkosKcXlX/i5q+in+q9E+tyOh5/Nio=;
        b=gG9kHIZYz/gquxq5EYhQUwv5FusUxUNdHyOoIMlMp5m8M+WQeGVWKsdZuRY/mO+h0e
         5SMXB6Cs5rMfyv+cPtVB+mFDWtxAUnZUSAPBtVTm9yU9e5Z4Cf87SqjOt7xrllbYxWmJ
         BbA3swxe2e3POjrS/psP16I5JgxvQ755LR5RVWxKoZXnN4vwU7lpWFDRvK9QxYywydUH
         txCb00e0Qvwuc7d8+O4GOohmLMr9XGptG7eg3qfLPiyDFxi6rZ0ejEPQqEHo/hP3aOSe
         VvTmLM4FcXgzCi24NB5i6Ttr0n+OjbyRfxT3GnvSD+45+X0siviasj/N85uHehsCTRqL
         WqaQ==
X-Gm-Message-State: AOAM530tWhSyRzZ3Hg6UqSqxBUBxo2RFSz6VTfxGK16dbCNmAt1f959S
        0H2J0yh1AK1i+OxVyAFBQHA=
X-Google-Smtp-Source: ABdhPJybso5yqvjzbIDB0QovViQZfOgPeNvZ1SmF4POb1m9AqIqPBw0EQVKRo08/KpxOqTZuYIKZwA==
X-Received: by 2002:a62:7ad5:0:b029:1a3:d0a2:e49 with SMTP id v204-20020a627ad50000b02901a3d0a20e49mr1769251pfc.31.1609895409418;
        Tue, 05 Jan 2021 17:10:09 -0800 (PST)
Received: from x2.lan ([2400:4070:175b:7500::7a7])
        by smtp.gmail.com with ESMTPSA id w27sm502126pfq.104.2021.01.05.17.10.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jan 2021 17:10:08 -0800 (PST)
From:   Vincent Pelletier <plr.vincent@gmail.com>
To:     Rob Herring <robh@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org
Subject: Re: Is there a reason not to use -@ to compile devicetrees ?
Date:   Wed,  6 Jan 2021 01:09:54 +0000
Message-Id: <20210106010955.578304-1-plr.vincent@gmail.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <CAL_JsqLCeNVnjgYAHhMEiv79iX552EPC7LGgk7GBrt2JsSYo5Q@mail.gmail.com>
References: <CAL_JsqLCeNVnjgYAHhMEiv79iX552EPC7LGgk7GBrt2JsSYo5Q@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

> Read the last time this came up:
> 
> https://lore.kernel.org/linux-devicetree/71fb0ff289e84c55bd92ecd96bc9aa76@svr-chch-ex1.atlnz.lc/

Thanks a lot, this answers my question.

In my case, I do not expect the kernel to apply the overlay, so I believe
I avoid 99% of the complexity mentionned in that thread.

Would the following patch (in reply) be acceptable ?

Especially:
- Is it fine to add such config option without selecting it anywhere ?
- DTC_FLAGS_overlay* and DTC_FLAGS_testcases can contain -@, should I try
  to figure a way out to make them select this option ?

Regards,
Vincent Pelletier


