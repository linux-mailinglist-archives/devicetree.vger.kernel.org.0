Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6BA782DF62F
	for <lists+devicetree@lfdr.de>; Sun, 20 Dec 2020 18:00:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727683AbgLTQ7f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Dec 2020 11:59:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727130AbgLTQ7f (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Dec 2020 11:59:35 -0500
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98589C061248
        for <devicetree@vger.kernel.org>; Sun, 20 Dec 2020 08:58:54 -0800 (PST)
Received: by mail-lf1-x129.google.com with SMTP id o13so18095943lfr.3
        for <devicetree@vger.kernel.org>; Sun, 20 Dec 2020 08:58:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=uG36SVtGZNLo5oW/bVnZMGTMymJIO49OHCGCdp4VCfs=;
        b=fY0fwrA+gMEzT7rtnezO0S+mj3jAAw+g0jYnicWbLwGmVeOPFkc00pjMN5A9A+kVJn
         9rS3kuCoAR+3NcV7IF4WRcW2hsWlYbqqSGKD4y040eG8iAbABasxQb3YvsvtCicbbOWu
         +K8mrAIpqf5Us0L7PdTZej2k0r1HcSqdRPiUCFap8Btft5YhITP5eNTACT1w1V99snm9
         oPVy6rbiGL8Yy1Zc4YKLxS9lRHDbKLAh+mY5fuyABKH6UBGIxPCpkL9bhAnbl1MV1HiV
         J++4UcXtO8tWIiVxguckjlixNuuT3XkB9Ubmjk7Al+c0WH+y+3FEqlw8LwQ9j2OqyNNg
         jnug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=uG36SVtGZNLo5oW/bVnZMGTMymJIO49OHCGCdp4VCfs=;
        b=Yq+1NV3izi7G+j7U3+d5cDdBpr8Wc5X3reYpw6xHtqocnYzfok9PKqwl7SB4Nkmm+m
         X8MNy5QBuKi1q/52uSSSMhrE0eFbTJI/9cNnt9/bH1DZS7qafsBGa8ItXu6MgSozEegW
         cS3goupv5uGoE8w35FR5WMcnZU8sqDLhMs9N9My87Id4+yGxpwXMlQjYZJIW1YUqLw3n
         zRRwQSJGorrdNOnEe1M9CeRGAEZOlK30KqhA0ZfRx1uAo7wB5rR+1U7bY9A/7g6fGLXg
         dtHg4aSn3Lcwpk5hvdn9s+ueEavX5dx7eoVk9T5GaA4Vedh5+zfsV2PB8T8WNzelRoMC
         jvYA==
X-Gm-Message-State: AOAM533tTCwchVcJg1bt2MbHBd6vPxf7z57+iEw7PqVzwpIbP1cPDQOK
        ed1WwyzEYC1gWtvQeRQvgdOLRw==
X-Google-Smtp-Source: ABdhPJzCE2R7UO+j0vvpp4Fw8Jn0u2V4l53bTvlExXDUOb7iPcslFZHUytgfEG9o1CVUkfBfoWUeqw==
X-Received: by 2002:a19:5f59:: with SMTP id a25mr5254081lfj.310.1608483532908;
        Sun, 20 Dec 2020 08:58:52 -0800 (PST)
Received: from eriador.lumag.spb.ru ([188.162.64.15])
        by smtp.gmail.com with ESMTPSA id t30sm1696638lft.266.2020.12.20.08.58.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Dec 2020 08:58:52 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Lee Jones <lee.jones@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/4] Add support for Qualcomm QCA639x chips family
Date:   Sun, 20 Dec 2020 19:58:41 +0300
Message-Id: <20201220165845.3712599-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Qualcomm QCA639x is a family of WiFi + Bluetooth chips, with BT part
being controlled through the UART and WiFi being present on PCIe
bus. Both blocks share common power sources wich should be turned on
before either of devices can be probed. Declare common 'qca639x' driver
providing a power domain to be used by both BT and WiFi parts.



