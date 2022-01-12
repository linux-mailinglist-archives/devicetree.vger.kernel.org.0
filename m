Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 269A448BFDA
	for <lists+devicetree@lfdr.de>; Wed, 12 Jan 2022 09:28:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351620AbiALI2f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jan 2022 03:28:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49548 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349367AbiALI2b (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jan 2022 03:28:31 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47F16C061756
        for <devicetree@vger.kernel.org>; Wed, 12 Jan 2022 00:28:31 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id e5so1008602wmq.1
        for <devicetree@vger.kernel.org>; Wed, 12 Jan 2022 00:28:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=rNOuAcwNuDHxBvtMyyjJQMqiXIXS4T/5jqGLQkkMpuQ=;
        b=s+v9/098gsrdVTljt+5QzW9V1NPMHTbPtDgclKahM+vq9G1BEw610BrHv9evjZXf2f
         JnWmzUalccfJXAbQior7YoU/ozWAFfQgwGflBphtcINF9XjGKocasvXfWPBzJqVYbuJ2
         +RfWKnOtk4FIGS1ywsL5mL445ewcgsJtniT9FmbJEyBSNlA3qUffLhjQQieIGox2+xJ+
         6BO7wxMJoMpw8R60VVme2KxLVmqEIgHy6hJrE4aPKfN1jJMFhU9lldBjNX2VSKl7JWZX
         y6yPmdiWAzrEtFQlleihXj6Wtk+z51iYgqRcm1Oxu4ortyFLfKGaa47sPqX3dhpU91nL
         9c6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rNOuAcwNuDHxBvtMyyjJQMqiXIXS4T/5jqGLQkkMpuQ=;
        b=wMxIbt7NTEDejHAOSovypK0LBubb7JH+pKSITO8Z1V71unJLZoK6jGnlkzfBrd5FF1
         LB29GMi4ZI/fSuNq2zrfalmlv3ysqscYUrD99BgEMdpJw43Hb+nM3qydbFoGLxl60wZF
         v3koAJvQ+N2HxgL1JcnWaXa5/A3baMFtJNEKKQJ15Ua6OZD5GBXs8WBRTf3xqRiDtRBa
         EVBMO9F7J0vBnjGwzFl4aMqqehABmJJ1KpNRETIWWG7I4lTGXTse5OKWnfODRod2++yj
         9WSEoD4NJN3cQU7lUM82W8n/4A+w9S3Gye/+HV9WLiSjuYzUuAoidQOfCBHYC3cpnvpo
         0sNA==
X-Gm-Message-State: AOAM532hOusEItZ922PGBsC5e7YHuECXoAwXRu9mCexEh7TyM+UwGL8B
        W82xhbWGaV3C6GgnjBg/l133cbfFm4GNPQ==
X-Google-Smtp-Source: ABdhPJwNpciLzIeYCvtRMHHFH5XaT1yQy0DngWu1Fc1E6DGL2A47DnOCrNKY5gbBMH+hiZbqjkezYw==
X-Received: by 2002:a05:600c:4f13:: with SMTP id l19mr5682629wmq.152.1641976109447;
        Wed, 12 Jan 2022 00:28:29 -0800 (PST)
Received: from localhost.localdomain ([2001:861:44c0:66c0:381b:6e50:a892:5269])
        by smtp.gmail.com with ESMTPSA id v129sm254846wme.29.2022.01.12.00.28.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jan 2022 00:28:28 -0800 (PST)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Xianwei Zhao <xianwei.zhao@amlogic.com>,
        linux-amlogic@lists.infradead.org
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        Vyacheslav Bocharov <adeep@lexina.in>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>, kelvin.zhang@amlogic.com,
        Christian Hewitt <christianshewitt@gmail.com>
Subject: Re: [PATCH V3] dt-bindings: arm: amlogic: add S4 based AQ222 bindings
Date:   Wed, 12 Jan 2022 09:28:24 +0100
Message-Id: <164197609473.825600.4070247492095618792.b4-ty@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211221030014.434-1-xianwei.zhao@amlogic.com>
References: <20211221030014.434-1-xianwei.zhao@amlogic.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, 21 Dec 2021 11:00:14 +0800, Xianwei Zhao wrote:
> Add bindings for the new Amlogic S4 SoC family,
> and add binds the compatible for the Amlogic S4 Based AQ222 board.
> 
> S4 is an application processor designed for hybrid OTT/IP Set To
> Box(STB) and high-end media box applications, with quad core Cortex-A35.
> 
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v5.18/dt64)

[1/1] dt-bindings: arm: amlogic: add S4 based AQ222 bindings
      https://git.kernel.org/amlogic/c/fc32ca1ea6f74c1be7abf9d21b0bac8bce11bec3

-- 
Neil
