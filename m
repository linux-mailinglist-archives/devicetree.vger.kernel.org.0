Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7CE7155C8A3
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 14:55:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241003AbiF0UD6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 16:03:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240934AbiF0UDn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 16:03:43 -0400
Received: from mail-oo1-xc2c.google.com (mail-oo1-xc2c.google.com [IPv6:2607:f8b0:4864:20::c2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CE741A3AF
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 13:03:42 -0700 (PDT)
Received: by mail-oo1-xc2c.google.com with SMTP id v11-20020a4aa50b000000b00425a09bb69aso895336ook.5
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 13:03:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=IqQ60DVkYXHzaSF2fU/ZpR6bciE+8kvqX7brRDnIpRc=;
        b=LJ9ap9eiaUu8v0xxpI8xSG1noHQaHaFUxc+NxG3SioYRjtvbp1A1CMswmhYrNa5tN2
         ToDx2KtrwLAjjH2BQtUF5FkyujBqtHCZg2upJuJTivfMKDhgIDnzdqrO3faA72Tbgqgy
         MQFet7fhe7mtkMEF9XC5IN/3aak3U8z8RhxIFvFEBS9HtwgHegWiZd4VERyFhAcCxBJB
         EJtrB/yGAwoAHL/DMoKwlBz3A05VbJQrv7ivvtgnxAXubAQP+c/O4gxtd2EPSeKE4phK
         FyqvEN3zWJzqYyu4oG+oEMp2G3oGRCueAK41/RGTFk6mSxam4l7hYS5DNSa3iE0G7fZ5
         5LQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=IqQ60DVkYXHzaSF2fU/ZpR6bciE+8kvqX7brRDnIpRc=;
        b=f8fg4msi7jbk8+qhjA8QQgYzlH71uxDH1jvzp5Ev5ZMxTyz+i1hrwaFU9cdmQm2qTN
         fnYJl/aPx7OsjdC+RcOOmUfHQeIVb3k/AcUMM0cGB7JFN1IQSK9UwSGocwg4x36Jbd7B
         7Un7sYV4sKpz/jIi1aA4rVycHg/j+VtzwvTlp6QloXpTk8az7KXU2Zs4t9+7sZUcdREC
         0p8nve45LqMV8FO8aVOCTvFK5t9+3+R0bZVPPJ02sm1ppd0vqjSA28uIsXHx1NZvKd43
         sVJZbNDOVPUc1Aosf6U+vifW9u6qrCBz2kyxeL4gO8Rs9rI63G8gsAM57Z146anO6qFG
         mHQg==
X-Gm-Message-State: AJIora8FhCTxLloLrixyjOxysH2fueJFchmW4I48DIoaKl1vu6ZtCMes
        kyKSXvfnJy/wqkaoqF3fLmqkODR0cOhwgw==
X-Google-Smtp-Source: AGRyM1t6R87DEHumvZmpDHkCpKxjPQWb4Ulgmu4EX6bHpT7pZcDUadbMMSl1MHG7XW5dT4MXJQoTiQ==
X-Received: by 2002:a4a:d418:0:b0:425:753e:4d79 with SMTP id n24-20020a4ad418000000b00425753e4d79mr6511324oos.64.1656360221604;
        Mon, 27 Jun 2022 13:03:41 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id m16-20020a4a9510000000b0041bdf977c6dsm6428729ooi.31.2022.06.27.13.03.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jun 2022 13:03:40 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Kevin Lund <kglund@google.com>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>
Subject: Re: (subset) [PATCH] arm64: dts: qcom: sc7280: Enable wifi for Chrome OS boards
Date:   Mon, 27 Jun 2022 15:02:58 -0500
Message-Id: <165636016348.3080661.13734395442073652475.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220518155252.1.I176d4254c79cfaafa38cbe36f066f02f819df9b6@changeid>
References: <20220518155252.1.I176d4254c79cfaafa38cbe36f066f02f819df9b6@changeid>
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

On Wed, 18 May 2022 15:52:55 -0700, Matthias Kaehlcke wrote:
> Enable the 'wifi' and 'remoteproc_wpss' nodes for all sc7280
> based Chrome OS boards. Delete the corresponding entries from
> sc7280-idp.dtsi since this file includes sc7280-chrome-common.dtsi.
> 
> 

Applied, thanks!

[1/1] arm64: dts: qcom: sc7280: Enable wifi for Chrome OS boards
      commit: 2a77ada5168af6c4ab8df1ea13655245f149b3fe

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
