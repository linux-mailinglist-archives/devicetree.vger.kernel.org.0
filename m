Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B8F556FB66F
	for <lists+devicetree@lfdr.de>; Mon,  8 May 2023 20:50:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230137AbjEHSuE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 May 2023 14:50:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39308 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229457AbjEHSuD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 May 2023 14:50:03 -0400
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com [IPv6:2607:f8b0:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E8D659FC
        for <devicetree@vger.kernel.org>; Mon,  8 May 2023 11:50:02 -0700 (PDT)
Received: by mail-pg1-x531.google.com with SMTP id 41be03b00d2f7-51b0f9d7d70so4582862a12.1
        for <devicetree@vger.kernel.org>; Mon, 08 May 2023 11:50:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683571802; x=1686163802;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qx1itqy5cmuFUmLTtFSMeG2cN9IHp/UhXTnN933eAT4=;
        b=C7SRW+fZvXASx2NBtAps573bApCjMkAIqt0OYS0LV9gJBLUi2WzdDONASWf8kYI3tP
         HuIGB5x7otTShDCfpguh/Wmo9/naIt32x7wHCRSjW/XrTDM7SkN+ljwRdnTwpS2Heq9K
         Zaxe0e0/4k99JL0c2RgnNy49bWjTanm4B52picAwpwAyWoDB60oGZcNq7xZMCreyAFJy
         dlY7XnoPTx7GiUDy5VP/HJN4wYRZOIjxYzfBbLxbsP7ybNFUJen0pSfRrHPAN2Wf0jn2
         xKEEGB9HaiA5ioxlI6IMxRsS/5YdNWkgleRPG7lkVkpnsEt1+t61cKtIGrN6gr57KMAe
         RGNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683571802; x=1686163802;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qx1itqy5cmuFUmLTtFSMeG2cN9IHp/UhXTnN933eAT4=;
        b=VFopiEUa9pGdrWNGm3rqsGqWjJ079r5llJ88iwOwXWQ0+itgKqGCXt+YEB2ISjLSEy
         gcP09XSD24sI1uqMp85L+l99mnWeSk6olhR4mzXyX4aOBiFjrxunFymK5niTZCL3zgSl
         Z5ydYBLJkGn6xjUuPRP+RvR/DyBQIPerHbeeHXALp0Ms0P6LfPJtpNxkSTM43J/pBWRr
         SPqFixhMPL/3+7nehnyCwOr+oKiZQNhBU1xYZoknhUhovUAPbQDhVRqpCRLyECcEMQU8
         H/wA0RFRsozX+ZAZuLzimHa+EW/JSvozI77KZDzeYkrvV3Tm5gE5uXQzByLWaOehwlSW
         Gg3Q==
X-Gm-Message-State: AC+VfDwc7QNVosR3k6/eWISx1MA9pHrUFQephXmlEp3obfPIWO89YH6r
        OSAiMBmyEnDzfzpKefxYMq4QtlZzUpg=
X-Google-Smtp-Source: ACHHUZ6/5DqvzbfAkRchQUPaofX9aukW5Rz3A1eykEAAyodpXthTS4FeCg9jtkH5zRllntqlrK9JXw==
X-Received: by 2002:a05:6a20:d70b:b0:f3:33fb:a62b with SMTP id iz11-20020a056a20d70b00b000f333fba62bmr12407085pzb.9.1683571801871;
        Mon, 08 May 2023 11:50:01 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id k4-20020aa792c4000000b0063aa1763146sm331153pfa.17.2023.05.08.11.50.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 May 2023 11:50:01 -0700 (PDT)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: =?UTF-8?q?Re=3A=20=5BPATCH=201/2=5D=20ARM=3A=20dts=3A=20BCM5301X=3A=20Relicense=20=3D=3Fiso-8859-2=3FQ=3FRafa=3DB3=27s=3F=3D=20code=20to=20the=20GPL=202=2E0+=20/=20MIT?=
Date:   Mon,  8 May 2023 11:49:58 -0700
Message-Id: <20230508184958.1638543-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230503121611.1629-1-zajec5@gmail.com>
References: <20230503121611.1629-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed,  3 May 2023 14:16:10 +0200, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> All BCM5301X device DTS files use dual licensing. Try the same for SoC.
> Introduce a new .dtsi file with a proper SPDX tag.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian
