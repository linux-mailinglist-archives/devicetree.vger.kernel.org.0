Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C660132AB94
	for <lists+devicetree@lfdr.de>; Tue,  2 Mar 2021 21:35:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1837047AbhCBUaU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Mar 2021 15:30:20 -0500
Received: from alln-iport-5.cisco.com ([173.37.142.92]:17060 "EHLO
        alln-iport-5.cisco.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344257AbhCBRn2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Mar 2021 12:43:28 -0500
X-Greylist: delayed 350 seconds by postgrey-1.27 at vger.kernel.org; Tue, 02 Mar 2021 12:42:26 EST
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=cisco.com; i=@cisco.com; l=483; q=dns/txt; s=iport;
  t=1614707007; x=1615916607;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=i+Gz80jPEL08iRfyqDTBuTMykYMo9F/a3XftoJvNPyg=;
  b=LKLgID5+V2biIAOkFB6zpN4KmF5O6jOLBQOUZg2akICgiehZ6S35CfsA
   L0HXu2P3YPq1uE+cXzQc3Vf1FAtlny/6jX4OXHf5EFh0KxqDmkTqkl+MC
   wx0Q+J0lrVCGLO3RK2/dzVViWE83pSBd7oRvbmGx3fU5O/OGREhZBiJiI
   E=;
X-IPAS-Result: =?us-ascii?q?A0AHAAAVdz5gmIoNJK1iGgEBAQEBAQEBAQEDAQEBARIBA?=
 =?us-ascii?q?QEBAgIBAQEBQIE+AgEBAQELAYN2ATkxlh2PehaMOwsBAQENAQE0BAEBhE0Cg?=
 =?us-ascii?q?XoCJTcGDgIDAQEBAwIDAQEBAQUBAQECAQYEFAEBAQEBAQEBhkOGRQEFOj8QC?=
 =?us-ascii?q?xguPBsGE4JwgwitBXSBNIkmgUQigRYBjUImHIFJQoQrPogIgisEpDibe4MGg?=
 =?us-ascii?q?R+acjEQgxWgMbZyAgQGBQIWgWoigVkzGggbFYMkUBkNjjiOUCADLzgCBgoBA?=
 =?us-ascii?q?QMJjBMBAQ?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="5.81,217,1610409600"; 
   d="scan'208";a="673161766"
Received: from alln-core-5.cisco.com ([173.36.13.138])
  by alln-iport-5.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA; 02 Mar 2021 17:35:25 +0000
Received: from zorba ([10.24.9.198])
        by alln-core-5.cisco.com (8.15.2/8.15.2) with ESMTPS id 122HZNSi008144
        (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
        Tue, 2 Mar 2021 17:35:25 GMT
Date:   Tue, 2 Mar 2021 09:35:23 -0800
From:   Daniel Walker <danielwa@cisco.com>
To:     Christophe Leroy <christophe.leroy@csgroup.eu>
Cc:     Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Paul Mackerras <paulus@samba.org>,
        Michael Ellerman <mpe@ellerman.id.au>, robh@kernel.org,
        daniel@gimpelevich.san-francisco.ca.us,
        linux-kernel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
        linux-arch@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 0/7] Improve boot command line handling
Message-ID: <20210302173523.GE109100@zorba>
References: <cover.1614705851.git.christophe.leroy@csgroup.eu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1614705851.git.christophe.leroy@csgroup.eu>
X-Outbound-SMTP-Client: 10.24.9.198, [10.24.9.198]
X-Outbound-Node: alln-core-5.cisco.com
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Mar 02, 2021 at 05:25:16PM +0000, Christophe Leroy wrote:
> The purpose of this series is to improve and enhance the
> handling of kernel boot arguments.
> 
> It is first focussed on powerpc but also extends the capability
> for other arches.
> 
> This is based on suggestion from Daniel Walker <danielwa@cisco.com>
> 


I don't see a point in your changes at this time. My changes are much more
mature, and you changes don't really make improvements.

Daniel
