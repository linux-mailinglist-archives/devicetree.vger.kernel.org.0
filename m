Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 38F184C3732
	for <lists+devicetree@lfdr.de>; Thu, 24 Feb 2022 21:54:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234466AbiBXUzN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Feb 2022 15:55:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234471AbiBXUzE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Feb 2022 15:55:04 -0500
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com [IPv6:2607:f8b0:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E980527AA11
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 12:54:25 -0800 (PST)
Received: by mail-oi1-x232.google.com with SMTP id y7so4941473oih.5
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 12:54:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=43I6ekRHqWVR7CwecW8a7/gZV+2lK7QSWt8bdxdFb4s=;
        b=I/vGATIdJ46oKJYMhk/5aiavatZkPHJ3gxssGhAFeSWqoaIddpGiaEHeoWk6Quddtk
         LiNw4cRciTcXeppZq9iGLZoUTpibvT3ri733KD8Pc1TLrb3IJNxuuQj4TXZ7wP+uNhi0
         YG7PUt/OUrUMJSGxnkru5qoF0zgjXwEo+ea8Dqif/gb7tkOfjHph0w6Ks27XY4nrvVj7
         KsAJVvucCWXWWQIqno7z6aSERNjnZcdsdFW4IHcpbC1OdCSoNO3a5OcC3lmWg7tY8Z3X
         cYibSv2QetiF3uUvbOwhRYDUsmwWI+vV0dIGDTElD1Mnybms+O3/VAn7LElQdzkgmn+v
         +ACw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=43I6ekRHqWVR7CwecW8a7/gZV+2lK7QSWt8bdxdFb4s=;
        b=qdxdxsNBlAAmAfgxzl34j7cV6LP3WMZxGlELzZxrZ+ll9gv52nxVO2DDSQZ8axPnj4
         OnwpbL3rL67rx0JHpDFUqp1TQMMbI+M28v/vxmWTUVWZphXRIHRbgFVPzwpfuYwoe/n4
         43qTGLm59ooc/aENEMroriJKlrw7Lj7bq6X0ZxcovLy64/86OlaM9X6fJ+htayKWPjQ5
         7zUWo/AEwONkxP0D+k8IcPwbxPL+Xl+rD4Kt+wW+TY8teeoJLWscY3Z25+A7wJ4MmZ91
         kPLmKQRK911uCcN5okQur3EGOMEcNyEfCKEgsBt1obknjxJ3NNCpCLlIf9trYZZrKHgd
         Gsyg==
X-Gm-Message-State: AOAM533xr3oFBmR8A+hFrP69JRaDHImL1BstM4MraCyZKfTtX3K29CIO
        vj8dIwUScC+PIb50SI17izDTww==
X-Google-Smtp-Source: ABdhPJxhSGlAr02MlhlC3RF+7ctSR88VMt+jwGSmBA1qNiZ/MDJUpmd5T0Z59y+NHaxn93GZ1WeUpA==
X-Received: by 2002:a05:6808:21a2:b0:2d4:c3e6:6873 with SMTP id be34-20020a05680821a200b002d4c3e66873mr8503732oib.253.1645736065301;
        Thu, 24 Feb 2022 12:54:25 -0800 (PST)
Received: from builder.lan ([2600:1700:a0:3dc8:3697:f6ff:fe85:aac9])
        by smtp.gmail.com with ESMTPSA id c8-20020a4ad788000000b0031ce69b1640sm191259oou.10.2022.02.24.12.54.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Feb 2022 12:54:24 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     linux-arm-msm@vger.kernel.org, Xilin Wu <wuxilin123@gmail.com>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        robh+dt@kernel.org, agross@kernel.org, tony.luck@intel.com,
        ccross@android.com, keescook@chromium.org,
        angelogioacchino.delregno@somainline.org,
        konrad.dybcio@somainline.org, anton@enomsg.org
Subject: Re: [PATCH/RESEND] arm64: dts: qcom: Add support for Samsung Galaxy Book2
Date:   Thu, 24 Feb 2022 14:54:09 -0600
Message-Id: <164573604161.1471031.2966879245937890309.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220223145130.544586-1-wuxilin123@gmail.com>
References: <20220223145130.544586-1-wuxilin123@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 23 Feb 2022 22:51:32 +0800, Xilin Wu wrote:
> Add support for Samsung Galaxy Book2 (W737) tablets.
> 
> Currently working features:
> - Bootloader preconfigured display at 1280p
> - UFS
> - Wacom Digitizer
> - Two USB 3 ports
> - Sound
> - Bluetooth
> - Wi-Fi
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: qcom: Add support for Samsung Galaxy Book2
      commit: d4b341269efb3c7fb37747064f7381c21dd7b983

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
