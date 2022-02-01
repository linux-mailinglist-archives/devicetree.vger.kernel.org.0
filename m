Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 112DF4A5664
	for <lists+devicetree@lfdr.de>; Tue,  1 Feb 2022 06:21:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233942AbiBAFU7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Feb 2022 00:20:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42362 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234054AbiBAFUi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Feb 2022 00:20:38 -0500
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com [IPv6:2607:f8b0:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A60CC0613E4
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 21:20:34 -0800 (PST)
Received: by mail-ot1-x336.google.com with SMTP id j38-20020a9d1926000000b0059fa6de6c71so15145548ota.10
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 21:20:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=LvAQN8dUS0+XkffJ1XQgKjOB8AsXGCjt9K5IDpVPCug=;
        b=xrHWHKvjSM6yZ9sW/la0fVwj2uTq7ONafyoMhfEEQppdnMoAP4pDml/QEl6Ojzx4Sd
         yC4La9gViReoOr+gFQtK6Cf4ckGvlOWf/ClNEZut24TW2ydHS5LnMe7UN2fUVbiWarBb
         mH9rmpYfSs9MoItrw79RJ4+OrKqFNf5hdnBBz53hzt0OFkdIlMZbL8sUB89o39D8RTM/
         Hm1eW6R6T3Cp4J9wuRqKOFhc4q8+S09dGEVet8Ye+9ofhHZkb4maNNtI7xkTXOR9Me3T
         26M7aUvAgG+FCWFoLsGxguSMLC0P/CcoaiFUwGX+885wzFAOYj8WYLBaDE+KmgYEVYh+
         hSGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=LvAQN8dUS0+XkffJ1XQgKjOB8AsXGCjt9K5IDpVPCug=;
        b=qVfiM0cA8tKytr8Ijp95MXIrqgF9F0V4XnRrJUe+LMu6eUT+V0ZW9Z7gmy44N2B19N
         Wzn8Rzq75vuY1SfAoZ+D5M/F7+WMfvgYtE02jPMmQr3cv12aDyLOUw2CEASeTg3eSpHp
         TEe93lgY9nJmbHEGEy5N6FmkYwsVGnNGjto27fRtJWtN/CZwo3Ti6dE2IdPpFWtzc9bJ
         5Ibjw4gaZ6s0AlB+fthhXCpInzoi/syPpNM9DZfeJlMkQJ/DPaAH+ZOusDmHb2gxM5As
         UpDhnggSbggnaZs2Xobq9biSLavFLjoJbHTiTZhXfH2aCM5G1BtTP+Le9TG/UaokO93b
         bEUQ==
X-Gm-Message-State: AOAM53278gO+NDDM4ZiPBP1HorunJm6XL7irahKQihR5ey088wgdFV/C
        40u8cx1tQRiI2MJQ9RvX4FeaXw==
X-Google-Smtp-Source: ABdhPJxtSe8cPKNC5PUUwFsEvKkTGox8FyK3dfg5Eg9w9nIPzmLbFUbR1gVH3JNCGtSqxJ9Hty+CTA==
X-Received: by 2002:a05:6830:314f:: with SMTP id c15mr4916828ots.28.1643692834010;
        Mon, 31 Jan 2022 21:20:34 -0800 (PST)
Received: from builder.lan ([2600:1700:a0:3dc8:3697:f6ff:fe85:aac9])
        by smtp.gmail.com with ESMTPSA id u3sm8193107ooh.19.2022.01.31.21.20.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jan 2022 21:20:33 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
        David Heidelberg <david@ixit.cz>
Cc:     devicetree@vger.kernel.org, ~okias/devicetree@lists.sr.ht,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH] ARM: dts: qcom: nexus7: remove vcss supply which never existed
Date:   Mon, 31 Jan 2022 23:19:42 -0600
Message-Id: <164369277344.3095904.3596257991206574402.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211225212000.80459-1-david@ixit.cz>
References: <20211225212000.80459-1-david@ixit.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 25 Dec 2021 22:20:00 +0100, David Heidelberg wrote:
> Probably got in by accident, search trough documentation and kernel code
> didn't found any occurences.
> 
> 

Applied, thanks!

[1/1] ARM: dts: qcom: nexus7: remove vcss supply which never existed
      commit: 3be5acc8586bde3884f61b78e915a468b01b3a9d

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
