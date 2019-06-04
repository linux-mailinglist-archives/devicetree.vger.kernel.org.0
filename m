Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C84CD3473E
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2019 14:48:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727462AbfFDMsk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Jun 2019 08:48:40 -0400
Received: from mx07-00252a01.pphosted.com ([62.209.51.214]:20205 "EHLO
        mx07-00252a01.pphosted.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1727403AbfFDMsk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Jun 2019 08:48:40 -0400
X-Greylist: delayed 1991 seconds by postgrey-1.27 at vger.kernel.org; Tue, 04 Jun 2019 08:48:38 EDT
Received: from pps.filterd (m0102628.ppops.net [127.0.0.1])
        by mx07-00252a01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id x54C4X8Q010313
        for <devicetree@vger.kernel.org>; Tue, 4 Jun 2019 13:15:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=raspberrypi.org; h=to : from :
 subject : message-id : date : mime-version : content-type :
 content-transfer-encoding; s=pp;
 bh=eMleS+sVc7Zc0KhR3uyqsACYApIneIVmc3GHjPGqrDY=;
 b=m8hGAbc7piD4I8YIin4BLF5Q2Lh0qd2mi4kUK1tjBSA1Xr1n493QAvBHk89kCo7EkPSN
 DT0YqnQKaQsxF0qe1x81QYluHMcoz26L3eE9f4aH38Y2OVEyc11XnMCm59aA1rciQzAq
 Bv6bJkSOcMXs+E+GqnMZWPMwZemfgE42g3i6qBS1UbR7i/VcnfizFo3tXHKARN0amI86
 zhimPkzXw569K4TvlxfVwM9kS/Q5IF0QQpp5YeuZLnn6tjzyrgK3YrbIkhUaf70m+wwo
 WFZbvvVC9FqD7CILUGzLL3jATT0zibUP39bPXGzyi12X+qsD+HSGxzO/KltftAH8pY0k Wg== 
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com [209.85.128.69])
        by mx07-00252a01.pphosted.com with ESMTP id 2sues31h27-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=OK)
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2019 13:15:26 +0100
Received: by mail-wm1-f69.google.com with SMTP id v125so1893829wmf.4
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2019 05:15:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.org; s=google;
        h=to:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=eMleS+sVc7Zc0KhR3uyqsACYApIneIVmc3GHjPGqrDY=;
        b=UAFK3f55FN4X7/3h+WMHvJ3diLRNNMUPV+7au85j95UyUkIoi9RDMD9sRbsQ+HzpgJ
         p/+8i1x10zvy0/PIRHtadUnra8gWO+RrKY2hHTifTUiygbQpDEiPG6pXLsryBJjFiz2S
         H2gg6k0JkQkK+azNIWoQZeD7w4rtGHp74nW4+WtngY/LZc9c0TgKzfe16u7KlQeY4ibD
         LHWXDfr1CFP4k8uvysBX9aYSzY2jeB8GztL3kdHQS1jDe/WIAK/GMeC/us9GRQt6a85e
         loBWGpD7s3OHykUEM3wlLaLHbKa3UcTnOE19lhXLbaQTYxykVMOWPz4DQZHsY7yy8cao
         +94Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=eMleS+sVc7Zc0KhR3uyqsACYApIneIVmc3GHjPGqrDY=;
        b=kbgo/K3H5SP4tXwZHTeZiLnKUzzMUdY+mpf7VTHTd3zKlu402CmiB+ouo2opuSgWBO
         jTFgddz5kuuNc5E4CZ64BJw9wtFhsaS2HmvyV6+5eusfq6ydZ0baQUpeVUjsEHuMerhm
         5WxzeEuW5K+EzmJ7ESctmMUHTrU2XnSeZDqbblhqQj7OQ7Xgu3MoS2ZvHw6jktiyylzL
         QKIxvQfxninuUf/HTMldJsSghpznC7/XSCc2F2RRUFjV9yu2E9jRBluXyvIhEiR944vq
         QF+UHOde/gZJdsyIHPv1AG+3vmFX5UDQdHHW+EfDHN8AcR2PxUL21uQA9MtCH3sKAN43
         VBeA==
X-Gm-Message-State: APjAAAWR3dIKZUdQitPC87NJj/KLovVvDyku1iAR+d+u5fjZLvSFAyEu
        hQOCKTvChl1kNmF4SPN0X03wuCtKF+Pl3HSx62Us2ykACX7qK467K46kAd1uEvNlEDnXCceN158
        j65GcG26/GVHE3a9H3UKzzA==
X-Received: by 2002:a1c:108:: with SMTP id 8mr13418778wmb.159.1559650525706;
        Tue, 04 Jun 2019 05:15:25 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwCSywJvJnulKM73GRNdBSWFHfcr6xhEHVCFp2sTrq2mUbutFfMvN9VAsPHz3ylgA124a9ZaA==
X-Received: by 2002:a1c:108:: with SMTP id 8mr13418764wmb.159.1559650525426;
        Tue, 04 Jun 2019 05:15:25 -0700 (PDT)
Received: from ?IPv6:2a00:1098:3142:14:2cbd:20df:89bf:def2? ([2a00:1098:3142:14:2cbd:20df:89bf:def2])
        by smtp.gmail.com with ESMTPSA id 65sm33948458wro.85.2019.06.04.05.15.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Jun 2019 05:15:24 -0700 (PDT)
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Pantelis Antoniou <pantelis.antoniou@konsulko.com>,
        devicetree@vger.kernel.org,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
From:   Phil Elwell <phil@raspberrypi.org>
Subject: Dynamic overlay failure in 4.19 & 4.20
Message-ID: <c5af11eb-afe5-08c4-8597-3195c25ba1d5@raspberrypi.org>
Date:   Tue, 4 Jun 2019 13:15:26 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2019-06-04_09:,,
 signatures=0
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

In the downstream Raspberry Pi kernel we are using configfs to apply overlays at
runtime, using a patchset from Pantelis that hasn't been accepted upstream yet.
Apart from the occasional need to adapt to upstream changes, this has been working
well for us.

A Raspberry Pi user recently noticed that this mechanism was failing for an overlay in
4.19. Although the overlay appeared to be applied successfully, pinctrl was reporting
that one of the two fragments contained an invalid phandle, and an examination of the
live DT agreed - the target of the reference, which was in the other fragment, was
missing the phandle property.

5.0 added two patches - [1] to stop blindly copying properties from the overlay fragments
into the live tree, and [2] to explicitly copy across the name and phandle properties.
These two commits should be treated as a pair; the former requires the properties that
are legitimately defined by an overlay to be added via a changeset, but this mechanism
deliberately skips the name and phandle; the latter addresses this shortcoming. However,
[1] was back-ported to 4.19 and 4.20 but [2] wasn't, hence the problem.

The effect can be seen in the "overlay" overlay in the unittest data. Although the
overlay appears to apply correctly, the hvac-large-1 node is lacking the phandle it
should have as a result of the hvac_2 label, and that leaves the hvac-provider property
of ride@200 with an unresolved phandle.

The obvious fix is to also back-port [2] to 4.19, but that leaves open the question of
whether either the overlay application mechanism or the unit test framework should have
detected the missing phandle.

Phil

[1] 8814dc46bd9e ("of: overlay: do not duplicate properties from overlay for new nodes")
[2] f96278810150 ("of: overlay: set node fields from properties when add new overlay node")
